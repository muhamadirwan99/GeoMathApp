// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContentTentangApp extends StatefulWidget {
  const ContentTentangApp({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentTentangApp> createState() => _ContentTentangAppState();
}

class _ContentTentangAppState extends State<ContentTentangApp> {
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
                "Media pembelajaran ini berisi teori dan evaluasi materi.",
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
                "Teori disediakan untuk mempelajari secara singkat tentang materi limas dan prisma tegak.",
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
                "Disetiap materi disediakan evaluasi yang harus dikerjakan untuk bisa melanjutkan ke materi yang lain.",
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
                "Evaluasi materi digunakan untuk mengukur penguasaan materi limas dan prisma tegak.",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
