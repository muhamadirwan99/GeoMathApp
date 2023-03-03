// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContainerRumus extends StatefulWidget {
  final String value;

  const ContainerRumus({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<ContainerRumus> createState() => _ContainerRumusState();
}

class _ContainerRumusState extends State<ContainerRumus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: blue50,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Center(
          child: Text(
            widget.value,
            style: semiBold16.copyWith(
              color: neutral900,
            ),
          ),
        ),
      ),
    );
  }
}
