// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContentPetunjuk extends StatefulWidget {
  const ContentPetunjuk({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentPetunjuk> createState() => _ContentPetunjukState();
}

class _ContentPetunjukState extends State<ContentPetunjuk> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1.",
              style: reguler12.copyWith(color: blue900),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Text(
                "Pilih materi yang ingin dipelajari.",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "2.",
              style: reguler12.copyWith(color: blue900),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                "Pelajari materi tersebut dengan seksama baik itu melalui materi bacaan atau melalui video yang telah disediakan.",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "3.",
              style: reguler12.copyWith(color: blue900),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                "Setelah merasa yakin sudah menguasai materi, silakan untuk melakukan latihan soal.",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "4.",
              style: reguler12.copyWith(color: blue900),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                "Setelah selesai melakukan latihan soal, anda bisa mengisi evaluasi.",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
