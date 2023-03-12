// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContainerNumber extends StatefulWidget {
  final String value;

  const ContainerNumber({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<ContainerNumber> createState() => _ContainerNumberState();
}

class _ContainerNumberState extends State<ContainerNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: primaryPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Center(
        child: Text(
          widget.value,
          style: semiBold16.copyWith(
            color: neutral50,
          ),
        ),
      ),
    );
  }
}
