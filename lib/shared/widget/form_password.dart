// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';

class FormPassword extends StatefulWidget {
  final Function(String value) onChanged;
  final Function() onTapObscure;
  final bool obscure;
  final bool statusPassword;
  final bool statusForm;
  final String? initialValue;

  const FormPassword({
    Key? key,
    required this.onChanged,
    required this.onTapObscure,
    required this.obscure,
    required this.statusPassword,
    required this.statusForm,
    this.initialValue,
  }) : super(key: key);

  @override
  State<FormPassword> createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
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
                    'assets/icon/update/mata_tutup.svg',
                    width: 24,
                    height: 24,
                  )
                : SvgPicture.asset(
                    'assets/icon/update/mata_buka.svg',
                    width: 24,
                    height: 24,
                  ),
          ),
        ),
        enabledBorder: widget.statusForm
            ? UnderlineInputBorder(
                borderSide: BorderSide(
                  color: widget.statusForm ? neutral500 : danger500,
                  width: 2,
                ),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(
                  color: widget.statusPassword ? neutral500 : danger500,
                  width: 2,
                ),
              ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: widget.statusPassword ? primaryPurple : danger500,
            width: 2,
          ),
        ),
        hintText: "Masukkan kata sandi anda disini",
        hintStyle: reguler14.copyWith(
          color: neutral500,
        ),
      ),
      obscureText: widget.obscure,
      onChanged: widget.onChanged,
    );
  }
}
