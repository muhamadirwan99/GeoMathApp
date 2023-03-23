// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class TwoFormDialog extends StatefulWidget {
  final String titleLeft;
  final String hintLeft;
  final Function(String value) onChangedLeft;
  final String titleRight;
  final String hintRight;
  final Function(String value) onChangedRight;

  const TwoFormDialog({
    Key? key,
    required this.titleLeft,
    required this.hintLeft,
    required this.onChangedLeft,
    required this.titleRight,
    required this.hintRight,
    required this.onChangedRight,
  }) : super(key: key);

  @override
  State<TwoFormDialog> createState() => _TwoFormDialogState();
}

class _TwoFormDialogState extends State<TwoFormDialog> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleLeft,
                style: semiBold14.copyWith(color: neutral700),
              ),
              const SizedBox(
                height: 2,
              ),
              FormDialog(
                hintText: widget.hintLeft,
                onChanged: widget.onChangedLeft,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleRight,
                style: semiBold14.copyWith(color: neutral700),
              ),
              const SizedBox(
                height: 2,
              ),
              FormDialog(
                hintText: widget.hintRight,
                onChanged: widget.onChangedRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
