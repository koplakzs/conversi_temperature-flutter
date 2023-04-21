import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class InputTemperature extends StatefulWidget {
  final String text, selectItem, selectSymbol;
  final void Function(BuildContext) awaitReturn;
  final void Function(String?) onChanged;
  const InputTemperature(
      {Key? key,
      required this.text,
      required this.selectItem,
      required this.selectSymbol,
      required this.awaitReturn,
      required this.onChanged})
      : super(key: key);

  @override
  State<InputTemperature> createState() => _InputTemperatureState();
}

class _InputTemperatureState extends State<InputTemperature> {
  static const List<String> list = [
    'Celsius',
    'Fahrenheit',
    'Reamur',
    'Kelvin'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(20),
      color: MyTheme.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: widget.selectItem,
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: widget.onChanged,
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
                        fontSize: 80)),
                onTap: () {
                  widget.awaitReturn(context);
                },
              ),
              Text('\u00B0${widget.selectSymbol}',
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
