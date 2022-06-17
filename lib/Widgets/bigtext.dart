// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  final TextOverflow? overflow;
  int? lines;
  BigText({
    Key? key,
    this.color,
    required this.text,
    this.size = 20,
    this.overflow,
    this.lines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        overflow: overflow,
      ),
      maxLines: lines,
    );
  }
}
