import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class Button extends StatelessWidget {
  final Color textColor, backgroundColor;
  final String? text;
  final IconData? icons;
  final void Function(String) onPress;
  const Button(
      {Key? key,
      required this.onPress,
      this.text,
      this.icons,
      required this.textColor,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPress(text.toString()),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: backgroundColor,
        ),
        // shadowColor: AppColor.buttonEqual),
        child: text != null
            ? Text(
                text!.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor, fontSize: 23),
              )
            : Icon(
                icons,
                size: 23,
                color: MyTheme.white,
              ));
  }
}
