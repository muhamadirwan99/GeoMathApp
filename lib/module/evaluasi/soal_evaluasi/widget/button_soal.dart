// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ButtonSoal extends StatefulWidget {
  final String text;
  final Function() onPressed;
  final Color bgColor;
  final Color colorText;

  const ButtonSoal({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.bgColor,
    required this.colorText,
  }) : super(key: key);

  @override
  State<ButtonSoal> createState() => _ButtonSoalState();
}

class _ButtonSoalState extends State<ButtonSoal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 56,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryPurple,
          backgroundColor: widget.bgColor,
          side: const BorderSide(width: 1, color: blue150),
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
              color: widget.colorText,
            ),
          ),
        ),
      ),
    );
  }
}
