// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';

class FormPassword extends StatefulWidget {
  final Function(String value) onChanged;
  final Function() onTapObscure;
  final bool obscure;

  const FormPassword({
    Key? key,
    required this.onChanged,
    required this.onTapObscure,
    required this.obscure,
  }) : super(key: key);

  @override
  State<FormPassword> createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: SvgPicture.asset(
            'assets/icon/lock.svg',
          ),
        ),
        suffixIcon: InkWell(
          onTap: widget.onTapObscure,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: widget.obscure
                ? SvgPicture.asset(
                    'assets/icon/eye.svg',
                  )
                : SvgPicture.asset(
                    'assets/icon/category.svg',
                  ),
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: neutral500, width: 2),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: primaryPurple, width: 2),
        ),
        hintText: "Masukkan kata sandi anda disini",
        hintStyle: semiBold14.copyWith(
          color: neutral500,
        ),
      ),
      obscureText: widget.obscure,
      onChanged: widget.onChanged,
    );
  }
}
