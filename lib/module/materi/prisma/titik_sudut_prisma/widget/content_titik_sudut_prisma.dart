
// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentTitikSudutPrisma extends StatefulWidget {
  const ContentTitikSudutPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentTitikSudutPrisma> createState() =>
      _ContentTitikSudutPrismaState();
}

class _ContentTitikSudutPrismaState extends State<ContentTitikSudutPrisma> {
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
            "Titik Sudut",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Titik sudut merupakan titik yang terbentuk akibat perpotongan dua buah rusuk atau lebih pada suatu bangun ruang sisi datar.",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Sudut.png?alt=media&token=5ea3781a-7d68-4784-98a0-5d4fb3af9837",
              height: 177,
              width: 184,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Contoh titik sudut pada gambar di atas adalah:",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          Text(
            "A, B, C, D, E, F, G, H. Sehingga titik sudut pada kubus dan balok ada 8.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
        ],
      ),
    );
  }
}
