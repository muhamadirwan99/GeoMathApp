// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
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
          Image.asset("assets/materi/materi_limas.jpg"),
          Text(
            "Bagian - bagian Limas",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Gambar di atas adalah limas segiempat. Bagian-bagian dari limas adalah sebagai berikut :",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const TextNumber(
            number: "1.",
            value:
                "Sisi : ABCD = sisi alas, sisi yang lain adalah TAB, TBC, TCD, TDA.",
          ),
          const TextNumber(
            number: "2.",
            value:
                "Rusuk : TA, TB, TC dan TD adalah rusuk tegak. Rusuk yang lain AB, BC, CD dan AD.",
          ),
          const TextNumber(
            number: "3.",
            value:
                "Titik sudut : T, A, B, C dan D merupakan titik sudut dan T dinamakan titik puncak limas.",
          ),
          const TextNumber(
            number: "4.",
            value:
                "Tinggi limas : Garis yang ditarik dari T tegak lurus bidang alas disebut tinggi limas. Pada gambar tinggi limas adalah TO.",
          ),
          const TextNumber(
            number: "5.",
            value: "Bidang Diagonal : TAC dan TBD adalah bidang diagonal.",
          ),
        ],
      ),
    );
  }
}
