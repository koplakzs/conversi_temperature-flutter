import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class ResultTemperature extends StatefulWidget {
  const ResultTemperature({super.key});

  @override
  State<ResultTemperature> createState() => _ResultTemperatureState();
}

class _ResultTemperatureState extends State<ResultTemperature> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: MyTheme.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Kelvin',
            style: TextStyle(
                color: MyTheme.white,
                fontFamily: 'BreeSerif-Regular',
                fontSize: 45),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('274',
                  style: TextStyle(
                      color: MyTheme.white,
                      fontFamily: 'BreeSerif-Regular',
                      fontSize: 100)),
              Text('\u00B0K',
                  style: TextStyle(
                      color: MyTheme.white,
                      fontFamily: 'BreeSerif-Regular',
                      fontSize: 70))
            ],
          )
        ],
      ),
    ));
  }
}
