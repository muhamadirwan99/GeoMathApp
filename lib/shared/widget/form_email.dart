// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';

class FormEmail extends StatefulWidget {
  final Function(String value) onChanged;

  const FormEmail({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<FormEmail> createState() => _FormEmailState();
}

class _FormEmailState extends State<FormEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 10,
          ),
          child: SvgPicture.asset(
            'assets/icon/update/mail.svg',
            width: 24,
            height: 24,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: neutral500, width: 2),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: primaryPurple, width: 2),
        ),
        hintText: "Masukkan email anda disini",
        hintStyle: semiBold14.copyWith(
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
