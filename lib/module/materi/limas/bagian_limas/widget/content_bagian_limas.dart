// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

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
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1.",
                    style: reguler16.copyWith(color: neutral900),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Text(
                      "Sisi : ABCD = sisi alas, sisi yang lain adalah TAB, TBC, TCD, TDA.",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2.",
                    style: reguler16.copyWith(color: neutral900),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      "Rusuk : TA, TB, TC dan TD adalah rusuk tegak. Rusuk yang lain AB, BC, CD dan AD.",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3.",
                    style: reguler16.copyWith(color: neutral900),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      "Titik sudut : T, A, B, C dan D merupakan titik sudut dan T dinamakan titik puncak limas.",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "4.",
                    style: reguler16.copyWith(color: neutral900),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      "Tinggi limas : Garis yang ditarik dari T tegak lurus bidang alas disebut tinggi limas. Pada gambar tinggi limas adalah TO.",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "5.",
                    style: reguler16.copyWith(color: neutral900),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      "Bidang Diagonal : TAC dan TBD adalah bidang diagonal.",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
