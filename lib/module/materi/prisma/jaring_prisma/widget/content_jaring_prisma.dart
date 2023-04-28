// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentJaringPrisma extends StatefulWidget {
  const ContentJaringPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentJaringPrisma> createState() => _ContentJaringPrismaState();
}

class _ContentJaringPrismaState extends State<ContentJaringPrisma> {
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
            "Jenis dan Jaring - Jaring Prisma",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Selain Prisma segitiga, terdapat juga prisma yang lain seperti prisma dibawah ini :",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Jenis%20Jaring.png?alt=media&token=3ba20bbc-201c-409d-936a-51fd923bba80",
              height: 225,
              width: 380,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Jaring - Jaring Prisma",
            style: semiBold16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Jaring%20prisma.png?alt=media&token=725dd616-3d35-4a4e-b5dd-0716ee3df109",
              height: 341,
              width: 379,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
