// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentBagianPrisma extends StatefulWidget {
  const ContentBagianPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBagianPrisma> createState() => _ContentBagianPrismaState();
}

class _ContentBagianPrismaState extends State<ContentBagianPrisma> {
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
            "Bagian - bagian Prisma",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Prisma terdiri atas beberapa bagian diantaranya, titik sudut, rusuk, sisi atas, sisi tegak dan sisi alas.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Prisma.png?alt=media&token=98b20eed-edea-4767-bf0e-4a4cc0935650",
              height: 214,
              width: 201.3,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(
            number: "1.",
            value:
                "Sisi : sisi alas ABC dan DEF. Sisi yang lain adalah ABED, BCEF dan ACDF",
          ),
          const TextNumber(
            number: "2.",
            value: "Rusuk : AB, AC, BC, AD, BE, CF, DF, DE dan EF",
          ),
          const TextNumber(
            number: "3.",
            value: "Titik sudut : A, B, C, D, E dan F. ",
          ),
          const TextNumber(
            number: "4.",
            value: "Diagonal sisi : AF, CD, BF, CE, AE dan BD. ",
          ),
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Diagonal%20Sisi.png?alt=media&token=c98291aa-9637-4d75-a4b3-eea5064eaf09",
              height: 200,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
