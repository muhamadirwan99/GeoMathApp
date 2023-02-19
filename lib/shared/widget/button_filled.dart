// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ButtonFilled extends StatefulWidget {
  final String text;
  final Function() onPressed;

  const ButtonFilled({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ButtonFilled> createState() => _ButtonFilledState();
}

class _ButtonFilledState extends State<ButtonFilled> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          widget.text,
          style: semiBold16.copyWith(
            color: neutral50,
          ),
        ),
      ),
    );
  }
}
