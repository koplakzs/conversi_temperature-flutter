import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class Button extends StatelessWidget {
  final Color textColor, backgroundColor;
  final String? text;
  final IconData? icons;
  final void Function(String)? onPress;
  final void Function(BuildContext)? onDone;

  const Button(
      {Key? key,
      this.onPress,
      this.onDone,
      this.text,
      this.icons,
      required this.textColor,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () =>
            text != 'done' ? onPress!(text.toString()) : onDone!(context),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: backgroundColor,
        ),
        // shadowColor: AppColor.buttonEqual),
        child: icons == null
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
