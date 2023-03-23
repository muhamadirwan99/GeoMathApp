// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContentTujuanPembelajaran extends StatefulWidget {
  const ContentTujuanPembelajaran({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentTujuanPembelajaran> createState() =>
      _ContentTujuanPembelajaranState();
}

class _ContentTujuanPembelajaranState extends State<ContentTujuanPembelajaran> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tujuan Pembelajaran yang ditargetkan dari penggunaan aplikasi Geomath ini adalah Ananda diharapkan mampu:",
          style: reguler12.copyWith(color: blue900),
        ),
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
                "Menjelaskan tentang konsep bangun ruang sisi datar serta bagian-bagiannya.",
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
                "Mendefinisikan bangun ruang sisi datar berdasarkan karakteristik yang dimiliki.",
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
                "Menentukan luas permukaan bangun ruang sisi datar.",
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
                "Menentukan volume bangun ruang sisi datar",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "5.",
              style: reguler12.copyWith(color: blue900),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                "Menyelesaikan masalah yang berkaitan dengan bangun ruang sisi datar.",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
