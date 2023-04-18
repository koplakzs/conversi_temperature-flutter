import 'package:flutter/material.dart';
import 'package:temperature_conversi/widget/my_theme.dart';

class ButtonConversi extends StatelessWidget {
  const ButtonConversi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: MyTheme.white,
      child: Stack(
        children: [
          SizedBox(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: MyTheme.white,
                )),
                Expanded(
                    child: ClipPath(
                  clipper: _MyClipper(85),
                  child: Container(
                    color: MyTheme.blue,
                  ),
                ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyTheme.blue,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15)),
                child: const Icon(
                  Icons.arrow_downward_sharp,
                  color: MyTheme.white,
                  size: 32,
                )),
          ),
        ],
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Path> {
  final double space;

  _MyClipper(this.space);

  @override
  Path getClip(Size size) {
    final path = Path();
    final halfWidth = size.width / 2;
    final halfSpace = space / 2;
    final curve = space / 8;
    final height = halfSpace / 1.1;
    path.lineTo(halfWidth - halfSpace, 0);
    path.cubicTo(halfWidth - halfSpace, 0, halfWidth - halfSpace + curve,
        height, halfWidth, height);

    path.cubicTo(halfWidth, height, halfWidth + halfSpace - curve, height,
        halfWidth + halfSpace, 0);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
