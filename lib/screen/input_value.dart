import 'package:flutter/material.dart';
import 'package:temperature_conversi/model/model_input_value.dart';
import 'package:temperature_conversi/widget/display.dart';
import 'package:temperature_conversi/widget/keyboard.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class InputValue extends StatefulWidget {
  const InputValue({super.key});

  @override
  State<InputValue> createState() => _InputValueState();
}

class _InputValueState extends State<InputValue> {
  final OperationValue operation = OperationValue();

  _onPressed(BuildContext context, String value) {
    setState(() {
      operation.value(context, value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyTheme.white,
        child: Column(
          children: [
            Display(
              text: operation.text,
            ),
            Keyboard(onPress: _onPressed)
          ],
        ),
      ),
    );
  }
}
