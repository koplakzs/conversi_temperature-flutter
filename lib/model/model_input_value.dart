import 'package:flutter/material.dart';

class OperationValue {
  String text = '0';

  tap(String value) {
    if (text == '0') {
      text = value;
    } else {
      text += value;
    }
  }

  done(BuildContext context) {
    String result = text;
    Navigator.pop(context, result);
  }
}
