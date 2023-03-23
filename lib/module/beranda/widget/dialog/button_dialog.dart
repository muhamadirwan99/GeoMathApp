// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ButtonDialog extends StatefulWidget {
  final String value;
  final Function() onPressed;
  final bool status;

  const ButtonDialog({
    Key? key,
    required this.value,
    required this.onPressed,
    required this.status,
  }) : super(key: key);

  @override
  State<ButtonDialog> createState() => _ButtonDialogState();
}

class _ButtonDialogState extends State<ButtonDialog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: widget.status ? widget.onPressed : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            widget.value,
            style: semiBold16.copyWith(
              color: neutral50,
            ),
          ),
        ),
      ),
    );
  }
}
