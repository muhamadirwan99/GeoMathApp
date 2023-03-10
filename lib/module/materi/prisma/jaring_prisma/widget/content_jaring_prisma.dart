// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
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
            "Jaring - Jaring Prisma Segitiga",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Prisma segitiga adalah bangun tiga dimensi yang termasuk ke dalam bangun prisma yang memiliki sisi alas dan sisi atas berbentuk segi tiga. Bagian-bagian prisma segitiga yaitu:",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 9 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 6 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 5 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_prisma_segitiga.png",
            width: 222,
            height: 153,
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Jaring - Jaring Prisma Segiempat",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Prisma segi empat adalah bangun tiga dimensi yang termasuk ke dalam bangun prisma yang memiliki sisi alas dan sisi atas berbentuk segi empat. Bagian bagian prisma segi empat yaitu:",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 12 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 8 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 6 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_prisma_segiempat.jpg",
            width: 222,
            height: 153,
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Jaring - Jaring Prisma Segilima",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Prisma segi lima adalah bangun tiga dimensi yang termasuk ke dalam bangun prisma yang memiliki sisi alas dan sisi atas berbentuk segi lima. Bagian bagian prisma segi lima yaitu :",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 15 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 10 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 7 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_prisma_segilima.jpg",
            width: 222,
            height: 153,
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Jaring - Jaring Prisma Segienam",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Prisma segi enam adalah bangun tiga dimensi yang termasuk ke dalam bangun prisma yang memiliki sisi alas dan sisi atas berbentuk segi enam. Bagian bagian prisma segi enam yaitu:",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 18 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 12 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 8 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_prisma_segienam.jpg",
            width: 222,
            height: 153,
          ),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
