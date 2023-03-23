// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContentKompetensiDasar extends StatefulWidget {
  const ContentKompetensiDasar({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentKompetensiDasar> createState() => _ContentKompetensiDasarState();
}

class _ContentKompetensiDasarState extends State<ContentKompetensiDasar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Setelah mempelajari aplikasi geomath ini, diharapkan Ananda mampu : ",
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
                "Menyusun pemahaman tentang bangun ruang sisi datar (Limas & Prisma) Serta bagian bagiannya.",
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
                "Menyelesaikan masalah yang berkaitan dengan luas permukaan dan Volume bangun ruang sisi datar (limas & Prisma).",
                style: reguler12.copyWith(color: blue900),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
