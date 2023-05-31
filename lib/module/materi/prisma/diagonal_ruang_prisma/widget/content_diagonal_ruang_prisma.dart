// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentDiagonalRuangPrisma extends StatefulWidget {
  const ContentDiagonalRuangPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentDiagonalRuangPrisma> createState() =>
      _ContentDiagonalRuangPrismaState();
}

class _ContentDiagonalRuangPrismaState
    extends State<ContentDiagonalRuangPrisma> {
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
            "Diagonal Ruang",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Diagonal ruang merupakan suatu garis yang dibentuk dari dua titik Sudut yang berhadapan dalam suatu bangun ruang sisi datar. Diagonal ruang melintasi tepat di tengah bangun ruang.",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Diagonal%20Ruang.png?alt=media&token=69323368-beb8-42cf-8a8a-9e0b367db0a6",
              height: 206,
              width: 325,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Pada suatu kubus dan balok terdapat 4 diagonal ruang yaitu AG, DF, BH dan CE.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
        ],
      ),
    );
  }
}
