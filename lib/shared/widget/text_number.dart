// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class TextNumber extends StatefulWidget {
  final String number;
  final String value;

  const TextNumber({
    Key? key,
    required this.number,
    required this.value,
  }) : super(key: key);

  @override
  State<TextNumber> createState() => _TextNumberState();
}

class _TextNumberState extends State<TextNumber> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 16,
          child: Text(
            widget.number,
            style: reguler16.copyWith(color: neutral900),
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Text(
            widget.value,
            style: reguler16.copyWith(color: neutral900),
          ),
        ),
      ],
    );
  }
}
