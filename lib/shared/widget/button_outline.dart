// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ButtonOutline extends StatefulWidget {
  final String text;
  final Function() onPressed;

  const ButtonOutline({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ButtonOutline> createState() => _ButtonOutlineState();
}

class _ButtonOutlineState extends State<ButtonOutline> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryPurple,
        side: const BorderSide(width: 2, color: primaryPurple),
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
            color: primaryPurple,
          ),
        ),
      ),
    );
  }
}
