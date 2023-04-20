import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class ResultTemperature extends StatefulWidget {
  const ResultTemperature({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<ResultTemperature> createState() => _ResultTemperatureState();
}

class _ResultTemperatureState extends State<ResultTemperature> {
  static const List<String> list = [
    'Celsius',
    'Fanrenheit',
    'Reamur',
    'Kelvin'
  ];

  String selectItem = 'Celsius';
  String selectSymbol = 'C';
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: MyTheme.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
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
                switch (selectItem) {
                  case 'Fanrenheit':
                    selectSymbol = 'F';
                    break;
                  case 'Reamur':
                    selectSymbol = 'R';
                    break;
                  case 'Kelvin':
                    selectSymbol = 'K';
                    break;
                  default:
                    selectSymbol = 'C';
                    break;
                }
              },
              underline: Container(),
              alignment: Alignment.center,
              icon: Container(),
              style: TextStyle(
                  color: MyTheme.white,
                  fontFamily: 'BreeSerif-Regular',
                  fontSize: 45),
              elevation: 2,
              dropdownColor: MyTheme.blue,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text,
                    style: TextStyle(
                        color: MyTheme.white,
                        fontFamily: 'BreeSerif-Regular',
                        fontSize: 100)),
                Text('\u00B0$selectSymbol',
                    style: TextStyle(
                        color: MyTheme.white,
                        fontFamily: 'BreeSerif-Regular',
                        fontSize: 70))
              ],
            )
          ],
        ),
      ),
    );
  }
}
