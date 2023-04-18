import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:temperature_conversi/widget/button.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class Keyboard extends StatefulWidget {
  final void Function(String) onPress;
  const Keyboard({Key? key, required this.onPress}) : super(key: key);

  @override
  State<Keyboard> createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            color: MyTheme.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onPress: widget.onPress,
                        text: '7',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '8',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '9',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onPress: widget.onPress,
                        text: '4',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '5',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '6',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onPress: widget.onPress,
                        text: '1',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '2',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '3',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                        onPress: widget.onPress,
                        text: '.',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        text: '0',
                        textColor: MyTheme.blue,
                        backgroundColor: MyTheme.otherBlue),
                    Button(
                        onPress: widget.onPress,
                        icons: Icons.done,
                        textColor: MyTheme.white,
                        backgroundColor: MyTheme.blue)
                  ],
                )
              ],
            )));
  }
}
