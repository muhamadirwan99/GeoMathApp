// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';

class ContentCardDataDiri extends StatefulWidget {
  final String value;
  final String icon;

  const ContentCardDataDiri({
    Key? key,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  State<ContentCardDataDiri> createState() => _ContentCardDataDiriState();
}

class _ContentCardDataDiriState extends State<ContentCardDataDiri> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            widget.icon,
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Text(
            widget.value,
            style: semiBold16.copyWith(color: neutral900),
          ),
        ],
      ),
    );
  }
}
