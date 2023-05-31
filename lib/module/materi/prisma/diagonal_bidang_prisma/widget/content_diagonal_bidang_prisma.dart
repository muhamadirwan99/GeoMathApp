// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentDiagonalBidangPrisma extends StatefulWidget {
  const ContentDiagonalBidangPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentDiagonalBidangPrisma> createState() =>
      _ContentDiagonalBidangPrismaState();
}

class _ContentDiagonalBidangPrismaState
    extends State<ContentDiagonalBidangPrisma> {
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
            "Diagonal Bidang",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Diagonal merupakan ruas garis yang menghubungkan dua titik Sudut berurutan dari suatu bangun ruang. Diagonal bidang secara tepat membagi bidang dari suatu bangun ruang menjadi dua bagian yang sama besar.",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Diagonal%20Bidang.png?alt=media&token=385b2ec9-1f37-4a2d-b0f8-be8364f47b68",
              height: 176,
              width: 325,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Pada suatu kubus dan balok terdapat 12 diagonal bidang yaitu AC, DB, EG, HF, AH, DE, BG, CF, AF, BE, DG, dan CH.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
        ],
      ),
    );
  }
}
