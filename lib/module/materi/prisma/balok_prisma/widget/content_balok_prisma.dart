// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentBalokPrisma extends StatefulWidget {
  const ContentBalokPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBalokPrisma> createState() => _ContentBalokPrismaState();
}

class _ContentBalokPrismaState extends State<ContentBalokPrisma> {
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
            "Balok",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Balok terdiri atas beberapa bagian diantaranya titik sudut, rusuk, sisi, diagonal bidang dan diagonal ruang.",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Balok.png?alt=media&token=a4383a6c-9792-4a1a-8d38-a5c34ca87e5b",
              height: 153.5,
              width: 267.5,
            ),
          ),
        ],
      ),
    );
  }
}
