// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentRusukPrisma extends StatefulWidget {
  const ContentRusukPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentRusukPrisma> createState() => _ContentRusukPrismaState();
}

class _ContentRusukPrismaState extends State<ContentRusukPrisma> {
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
            "Rusuk",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Rusuk merupakan ruas garis yang terbentuk akibat perpotongan dua buah bidang pada bangun ruang sisi datar.",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Rusuk.png?alt=media&token=e985269f-6a42-4691-91a2-3eac9f9b1dbb",
              height: 177,
              width: 248,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Pada suatu kubus dan balok terdapat 12 rusuk, yaitu AB, BC, CD, DA, EA, DH, EH, EF, BF, FG, GH dan CG.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
        ],
      ),
    );
  }
}
