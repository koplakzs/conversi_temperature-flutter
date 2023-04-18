import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:temperature_conversi/widget/display.dart';
import 'package:temperature_conversi/widget/keyboard.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class InputValue extends StatefulWidget {
  const InputValue({super.key});

  @override
  State<InputValue> createState() => _InputValueState();
}

class _InputValueState extends State<InputValue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyTheme.white,
        child: Column(
          children: [Display(), Keyboard(onPress: (String value) => {})],
        ),
      ),
    );
  }
}
