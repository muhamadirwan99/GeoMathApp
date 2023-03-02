// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class CardDataDiri extends StatefulWidget {
  const CardDataDiri({
    Key? key,
  }) : super(key: key);

  @override
  State<CardDataDiri> createState() => _CardDataDiriState();
}

class _CardDataDiriState extends State<CardDataDiri> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Row(
              children: [
                SvgPicture.asset("assets/icon/update/data_diri.svg"),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Data Diri",
                  style: semiBold20.copyWith(color: neutral900),
                ),
              ],
            ),
          ),
          const ContentCardDataDiri(
            value: "VII",
            icon: "assets/icon/update/class.svg",
          ),
          const ContentCardDataDiri(
            value: "085697780009",
            icon: "assets/icon/update/whatsapp_circle.svg",
          ),
          const ContentCardDataDiri(
            value: "ayu.kinanti@gmail.com",
            icon: "assets/icon/update/mail_circle.svg",
          ),
          const SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}
