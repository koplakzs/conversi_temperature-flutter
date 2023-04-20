import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temperature_conversi/screen/input_value.dart';
import 'package:temperature_conversi/widget/button_conversi.dart';
import 'package:temperature_conversi/widget/input_temperatur.dart';
import 'package:temperature_conversi/widget/result_temperature.dart';

class Conversi extends StatefulWidget {
  const Conversi({super.key});

  @override
  State<Conversi> createState() => _ConversiState();
}

class _ConversiState extends State<Conversi> {
  String text = '0';
  String result = '0';
  void _awaitReturnValueFromInputValue(BuildContext context) async {
    final value = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const InputValue()));

    setState(() {
      text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                InputTemperature(
                    text: text, awaitReturn: _awaitReturnValueFromInputValue),
                ResultTemperature(text: result)
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: ButtonConversi(),
            )
          ],
        ),
      ),
    );
  }
}
