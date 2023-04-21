import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temperature_conversi/model/model_conversi.dart';
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
  final ConversiValue conversi = ConversiValue();
  String dumbValue = '';
  String text = '0';
  String fromItem = 'Celsius';
  String fromSymbol = 'C';
  String toItem = 'Kelvin';
  String toSymbol = 'K';
  void _awaitReturnValueFromInputValue(BuildContext context) async {
    final value = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => const InputValue()));

    setState(() {
      dumbValue = value;

      dumbValue.length <= 7
          ? text = dumbValue
          : text = dumbValue.substring(0, 7);
    });
  }

  void _dropChange(String? newItem) {
    setState(() {
      fromItem = newItem!;
    });
    switch (fromItem) {
      case 'Fahrenheit':
        fromSymbol = 'F';
        break;
      case 'Reamur':
        fromSymbol = 'R';
        break;
      case 'Kelvin':
        fromSymbol = 'K';
        break;
      default:
        fromSymbol = 'C';
        break;
    }
  }

  void _dropChangeTo(String? newItem) {
    setState(() {
      toItem = newItem!;
    });
    switch (toItem) {
      case 'Fahrenheit':
        toSymbol = 'F';
        break;
      case 'Reamur':
        toSymbol = 'R';
        break;
      case 'Kelvin':
        toSymbol = 'K';
        break;
      default:
        toSymbol = 'C';
        break;
    }
  }

  _onPressed() {
    setState(() {
      conversi.conversi(text, toItem, fromItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Column(
              children: [
                InputTemperature(
                    text: text,
                    selectItem: fromItem,
                    selectSymbol: fromSymbol,
                    onChanged: _dropChange,
                    awaitReturn: _awaitReturnValueFromInputValue),
                ResultTemperature(
                    text: conversi.result,
                    selectItem: toItem,
                    selectSymbol: toSymbol,
                    onChanged: _dropChangeTo)
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: ButtonConversi(
                onPressed: _onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
