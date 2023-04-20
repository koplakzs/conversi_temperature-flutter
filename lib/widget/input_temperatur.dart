import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temperature_conversi/screen/input_value.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class InputTemperature extends StatefulWidget {
  final String text;
  final void Function(BuildContext) awaitReturn;
  const InputTemperature(
      {Key? key, required this.text, required this.awaitReturn})
      : super(key: key);

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

  String selectItem = 'Celsius';
  String selectSymbol = 'C';

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: MyTheme.white,
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
            style: const TextStyle(
                color: MyTheme.blue,
                fontFamily: 'BreeSerif-Regular',
                fontSize: 45),
            elevation: 2,
            dropdownColor: MyTheme.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Text(widget.text,
                    style: const TextStyle(
                        color: MyTheme.blue,
                        fontFamily: 'BreeSerif-Regular',
                        fontSize: 100)),
                onTap: () {
                  widget.awaitReturn(context);
                },
              ),
              Text('\u00B0$selectSymbol',
                  style: const TextStyle(
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
