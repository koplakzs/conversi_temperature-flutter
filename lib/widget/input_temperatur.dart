import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class InputTemperature extends StatefulWidget {
  const InputTemperature({super.key});

  @override
  State<InputTemperature> createState() => _InputTemperatureState();
}

class _InputTemperatureState extends State<InputTemperature> {
  static const List<String> list = [
    'Celsius',
    'Fanrenheit',
    'Reamur',
    'Kelvin'
  ];
  String selectItem = list.first;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: MyTheme.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: DropdownButton(
              value: selectItem,
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newItem) {
                setState(() {
                  selectItem = newItem!;
                });
              },
              underline: Container(),
              alignment: Alignment.center,
              icon: Container(),
              style: TextStyle(
                  color: MyTheme.blue,
                  fontFamily: 'BreeSerif-Regular',
                  fontSize: 45),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('274',
                  style: TextStyle(
                      color: MyTheme.blue,
                      fontFamily: 'BreeSerif-Regular',
                      fontSize: 100)),
              Text('\u00B0K',
                  style: TextStyle(
                      color: MyTheme.blue,
                      fontFamily: 'BreeSerif-Regular',
                      fontSize: 70))
            ],
          )
        ],
      ),
    ));
  }
}
