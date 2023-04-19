import 'package:flutter/material.dart';

class InputValue {
  void value(String value) {
    switch (value) {
      case "done":
        done();
        break;
      default:
        tap();
        break;
    }
  }
}
