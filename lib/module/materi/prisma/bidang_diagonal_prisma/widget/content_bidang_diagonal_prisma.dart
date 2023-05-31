// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentBidangDiagonalPrisma extends StatefulWidget {
  const ContentBidangDiagonalPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBidangDiagonalPrisma> createState() =>
      _ContentBidangDiagonalPrismaState();
}

class _ContentBidangDiagonalPrismaState
    extends State<ContentBidangDiagonalPrisma> {
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
            "Bidang Diagonal",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Bidang diagonal merupakan sisi yang terbentuk dari gabungan diagonal bidang dan diagonal ruang.",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Bidang%20Diagonal.png?alt=media&token=24d30e7c-8ba4-4f2f-889a-ca859e42bbee",
              height: 206,
              width: 325,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Pada suatu kubus dan balok terdapat 6 bidang diagonal yaitu AFGD, AHGB, ACGE, BEHC, DEFC, dan BDHF.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
        ],
      ),
    );
  }
}
