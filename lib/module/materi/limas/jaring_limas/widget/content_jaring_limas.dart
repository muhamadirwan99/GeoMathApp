// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentJaringLimas extends StatefulWidget {
  const ContentJaringLimas({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentJaringLimas> createState() => _ContentJaringLimasState();
}

class _ContentJaringLimasState extends State<ContentJaringLimas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32.0,
          ),
          Text(
            "Jaring - Jaring Limas Segitiga",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Limas segitiga adalah bangun tiga dimensi yang termasuk ke dalam bangun limas yang memiliki sisi alas berbentuk segitiga Bagian-bagian limas segitiga yaitu :",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 6 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 4 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 4 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_limas_segitiga.png",
            width: 222,
            height: 153,
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Jaring - Jaring Limas Segiempat",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Limas segi empat adalah bangun tiga dimensi yang termasuk ke dalam bangun limas yang memiliki sisi alas berbentuk segi empat. Bagian-bagian limas segi empat yaitu :",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 8 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 5 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 5 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_limas_segiempat.png",
            width: 222,
            height: 153,
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Jaring - Jaring Limas Segilima",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Limas segi lima adalah bangun tiga dimensi yang termasuk ke dalam bangun limas yang memiliki sisi alas berbentuk segi lima. Bagian-bagian limas segi lima yaitu :",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(number: "1.", value: "Mempunyai 10 rusuk"),
          const TextNumber(number: "2.", value: "Mempunyai 6 titik sudut"),
          const TextNumber(number: "3.", value: "Mempunyai 6 sisi"),
          const SizedBox(
            height: 8.0,
          ),
          Image.asset(
            "assets/materi/jaring_limas_segilima.png",
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
