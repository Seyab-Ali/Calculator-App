import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color myColor;
  final VoidCallback onPress;

  const MyButton(
      {Key? key,
      required this.title,
      this.myColor = const Color(0xffa78e5e),
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: myColor,
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          )),
        ),
      ),
    ));
  }
}
