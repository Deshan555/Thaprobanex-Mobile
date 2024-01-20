import 'package:flutter/material.dart';

class Devider extends StatelessWidget {
  const Devider({
    Key? key,
    this.height,
    this.width,
    this.thickness,
    this.color,
    this.indent,
    this.endIndent,
  }) : super(key: key);

  final double? height;
  final double? width;
  final double? thickness;
  final Color? color;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Divider(
        thickness: thickness,
        color: color,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}