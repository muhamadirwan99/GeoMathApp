// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class FormDialog extends StatefulWidget {
  final String hintText;
  final Function(String value) onChanged;

  const FormDialog({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<FormDialog> createState() => _FormDialogState();
}

class _FormDialogState extends State<FormDialog> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: neutral200, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryPurple, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        hintText: widget.hintText,
        hintStyle: reguler14.copyWith(
          color: neutral500,
        ),
        focusColor: neutral500,
        fillColor: neutral500,
        hoverColor: neutral500,
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      onChanged: widget.onChanged,
    );
  }
}
