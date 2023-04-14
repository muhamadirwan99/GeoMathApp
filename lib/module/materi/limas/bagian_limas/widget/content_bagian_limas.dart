// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentBagianLimas extends StatefulWidget {
  const ContentBagianLimas({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBagianLimas> createState() => _ContentBagianLimasState();
}

class _ContentBagianLimasState extends State<ContentBagianLimas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Bagian - bagian Limas",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Bagian-bagian dari limas terdiri dari rusuk, bidang, titik sudut, diagonal sisi, diagonal ruang, dan bidang diagonal.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(
            number: "i.",
            value: "Rusuk.",
          ),
          const TextNumber(
            number: "ii.",
            value: "Sisi/bidang.",
          ),
          const TextNumber(
            number: "iii.",
            value: "Titik sudut.",
          ),
          const TextNumber(
            number: "iv.",
            value: "Diagonal bidang/sisi.",
          ),
          const TextNumber(
            number: "v.",
            value: "Diagonal ruang.",
          ),
          const TextNumber(
            number: "vi.",
            value: "Bidang diagonal.",
          ),
        ],
      ),
    );
  }
}
