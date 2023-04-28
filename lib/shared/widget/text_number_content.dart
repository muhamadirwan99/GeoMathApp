// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class TextNumberContent extends StatefulWidget {
  final String number;
  final String title;
  final String content;

  const TextNumberContent({
    Key? key,
    required this.number,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  State<TextNumberContent> createState() => _TextNumberContentState();
}

class _TextNumberContentState extends State<TextNumberContent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          child: Text(
            widget.number,
            style: semiBold16.copyWith(color: neutral900),
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: semiBold16.copyWith(color: neutral900),
              ),
              Text(
                widget.content,
                style: reguler16.copyWith(color: neutral900),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
