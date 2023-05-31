// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentBagianLimas extends StatefulWidget {
  const ContentBagianLimas({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentBagianLimas> createState() => _ContentBagianLimasState();
}

class _ContentBagianLimasState extends State<ContentBagianLimas> {
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
            "Bagian - bagian Limas",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Bagian-bagian Limas diantaranya ada titik puncak, titik sudut, rusuk, sisi tegak dan sisi alas. Secara rinci, bagian limas ditunjukan pada gambar berikut: ",
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
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-4.png?alt=media&token=174ee587-3049-4a61-8de8-f03c0b705223",
              height: 141,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(
            number: "1.",
            value: "Sisi : ABCD = sisi alas",
          ),
          const TextNumber(
            number: "",
            value: "TAB, TBC, TCD, TDA = sisi tegak.",
          ),
          const TextNumber(
            number: "2.",
            value:
                "Rusuk : TA, TB, TC dan TD adalah rusuk tegak. Rusuk yang lain AB, BC, CD dan AD.",
          ),
          const TextNumber(
            number: "3.",
            value:
                "Titik Sudut : T, A, B, C dan D merupakan titik sudut dan T dinamakan titik puncak limas.",
          ),
          const TextNumber(
            number: "4.",
            value:
                "Tinggi Limas : Garis yang ditarik dari T tegak lurus bidang alas disebut tinggi limas. Pada gambar tinggi limas adalah TO.",
          ),
          const TextNumber(
            number: "5.",
            value:
                "Bidang Diagonal : Suatu bidang yang dibentuk dari diagonal alas dan dua rusuk limas. Banyaknya bidang diagonal limas segi-n adalah 1/2 n buah. Limas segiempat berjumlah 1/2x4 = 2 buah.",
          ),
          const TextNumber(
            number: "",
            value: "Contoh pada gambar dibawah : bidang ACO dan BDO.",
          ),
          const TextNumber(
            number: "6.",
            value:
                "Diagonal Sisi : Ruas garis yang menghubungkan 2 titik sudut pada suatu bidang/sisi. Contoh : AC dan BD.",
          ),
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Diagonal%20Sisi%20-%20limas.png?alt=media&token=33fbcaeb-9232-4dc9-9992-564fbdb2a6f1",
              height: 180,
              width: 180,
            ),
          ),
        ],
      ),
    );
  }
}
