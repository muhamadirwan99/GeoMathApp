// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';

class FormBase extends StatefulWidget {
  final Function(String value) onChanged;
  final String hintText;
  final String icon;
  final String? initialValue;
  final bool statusForm;

  const FormBase({
    Key? key,
    required this.onChanged,
    required this.hintText,
    required this.icon,
    required this.statusForm,
    this.initialValue,
  }) : super(key: key);

  @override
  State<FormBase> createState() => _FormBaseState();
}

class _FormBaseState extends State<FormBase> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 10,
          ),
          child: SvgPicture.asset(
            widget.icon,
            width: 24,
            height: 24,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.statusForm ? neutral500 : danger500,
            width: 2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.statusForm ? primaryPurple : danger500,
            width: 2,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: reguler14.copyWith(
          color: neutral500,
        ),
        focusColor: neutral500,
        fillColor: neutral500,
        hoverColor: neutral500,
      ),
      onChanged: widget.onChanged,
    );
  }
}
