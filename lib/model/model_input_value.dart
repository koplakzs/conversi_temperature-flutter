import 'package:flutter/material.dart';

class OperationValue {
  String text = '0';
  void value(BuildContext context, String value) {
    switch (value) {
      case "done":
        done(context);
        break;
      default:
        tap(value);
        break;
    }
  }

  tap(String value) {
    if (text == '0') {
      text = value;
    } else {
      text += value;
    }
  }

  done() {}
}
