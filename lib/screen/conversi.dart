import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temperature_conversi/widget/input_temperatur.dart';
import 'package:temperature_conversi/widget/result_temperature.dart';

class Conversi extends StatefulWidget {
  const Conversi({super.key});

  @override
  State<Conversi> createState() => _ConversiState();
}

class _ConversiState extends State<Conversi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: const [InputTemperature(), ResultTemperature()],
        ),
      ),
    );
  }
}
