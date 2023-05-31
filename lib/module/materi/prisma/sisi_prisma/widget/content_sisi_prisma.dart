// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentSisaPrisma extends StatefulWidget {
  const ContentSisaPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentSisaPrisma> createState() => _ContentSisaPrismaState();
}

class _ContentSisaPrismaState extends State<ContentSisaPrisma> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            "Sisi",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Sisi merupakan bagian pada bangun ruang yang menjadi pembatas antara bagian luar dengan bagian dalam dari sebuah bangun ruang.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Sisi.png?alt=media&token=5d7ce33c-a9b2-462a-be44-14e57756d0b8",
              height: 177,
              width: 323,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const TextNumber(
            number: "1.",
            value: "Sisi Depan : ABFE",
          ),
          const TextNumber(
            number: "2.",
            value: "Sisi Belanag : DCGH",
          ),
          const TextNumber(
            number: "3.",
            value: "Sisi Kanan : BCFG",
          ),
          const TextNumber(
            number: "4.",
            value: "Sisi Kiri : ADEH",
          ),
          const TextNumber(
            number: "5.",
            value: "Sisi Atas : EFGH",
          ),
          const TextNumber(
            number: "6.",
            value: "Sisi Bawah : ABCD",
          ),
          Text(
            "yang membedakan, kubus memiliki 6 sisi berbentuk persegi, sedangkan balok memiliki 4 sisi berbentuk persegi panjang, 2 sisi berbentuk persegi.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
        ],
      ),
    );
  }
}
