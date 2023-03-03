// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class TextDaftarIsi extends StatefulWidget {
  final String value;
  final Function() onTap;

  const TextDaftarIsi({
    Key? key,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  State<TextDaftarIsi> createState() => _TextDaftarIsiState();
}

class _TextDaftarIsiState extends State<TextDaftarIsi> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: widget.onTap,
        child: Text(
          widget.value,
          style: semiBold16.copyWith(
              color: neutral900, decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
