// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class FormLeftTitleNew extends StatefulWidget {
  final String title;
  final String hintText;
  final Function(String value) onChanged;

  const FormLeftTitleNew({
    Key? key,
    required this.title,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<FormLeftTitleNew> createState() => _FormLeftTitleNewState();
}

class _FormLeftTitleNewState extends State<FormLeftTitleNew> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.title,
            style: reguler16.copyWith(
              color: blue900,
            ),
          ),
        ),
        Text(
          ":",
          style: reguler16.copyWith(
            color: blue900,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          flex: 2,
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
      ],
    );
  }
}
