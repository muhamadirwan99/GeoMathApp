// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class FormRightTitle extends StatefulWidget {
  final String title;
  final String hintText;
  final Function(String value) onChanged;

  const FormRightTitle({
    Key? key,
    required this.title,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<FormRightTitle> createState() => _FormRightTitleState();
}

class _FormRightTitleState extends State<FormRightTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: widget.hintText,
              isDense: true,
              contentPadding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 8,
                top: 4,
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: neutral500,
                  width: 2,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: primaryPurple,
                  width: 2,
                ),
              ),
            ),
            onChanged: widget.onChanged,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        SizedBox(
          width: 100,
          child: Text(
            widget.title,
            style: semiBold16.copyWith(
              color: blue900,
            ),
          ),
        ),
      ],
    );
  }
}
