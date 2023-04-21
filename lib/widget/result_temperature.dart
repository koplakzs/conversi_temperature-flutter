import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class ResultTemperature extends StatefulWidget {
  const ResultTemperature(
      {Key? key,
      required this.text,
      required this.selectItem,
      required this.selectSymbol,
      required this.onChanged})
      : super(key: key);
  final String text, selectItem, selectSymbol;
  final void Function(String?) onChanged;

  @override
  State<ResultTemperature> createState() => _ResultTemperatureState();
}

class _ResultTemperatureState extends State<ResultTemperature> {
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
        padding: const EdgeInsets.all(10),
        color: MyTheme.blue,
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
                    style: const TextStyle(
                        color: MyTheme.white,
                        fontFamily: 'BreeSerif-Regular',
                        fontSize: 60)),
                Text('\u00B0${widget.selectSymbol}',
                    style: const TextStyle(
                        color: MyTheme.white,
                        fontFamily: 'BreeSerif-Regular',
                        fontSize: 60))
              ],
            )
          ],
        ),
      ),
    );
  }
}
