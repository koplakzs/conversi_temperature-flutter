import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color textColor, backgroundColor;
  final String text;
  final void Function(int) onPress;
  const Button(
      {Key? key,
      required this.onPress,
      required this.text,
      required this.textColor,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPress(int.parse(text)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontSize: 23),
        ));
  }
}
