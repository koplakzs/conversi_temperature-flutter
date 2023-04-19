import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class Display extends StatefulWidget {
  final String text;
  const Display({Key? key, required this.text}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: MyTheme.white,
      child: Center(
          child: Text(
        widget.text,
        style: const TextStyle(
            fontFamily: 'BreeSerif-Regular', fontSize: 80, color: MyTheme.blue),
        textAlign: TextAlign.center,
      )),
    ));
  }
}
