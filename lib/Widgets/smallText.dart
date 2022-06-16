// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? size;
  final TextOverflow? overflow;
  const SmallText({
    Key? key,
    this.color,
    required this.text,
    this.size = 11,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: TextStyle(color: color, fontSize: size, overflow: overflow),
    );
  }
}
