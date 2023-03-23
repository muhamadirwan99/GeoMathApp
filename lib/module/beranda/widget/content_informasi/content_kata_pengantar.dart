// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class ContentKataPengatar extends StatefulWidget {
  const ContentKataPengatar({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentKataPengatar> createState() => _ContentKataPengatarState();
}

class _ContentKataPengatarState extends State<ContentKataPengatar> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Aplikasi Geomath ini disusun agar Ananda lebih memahami matematika. Melalui Geomath ini, Aranda difasilitasi untuk menemukan sendiri konsep - Konsep matematika. Konsep-konsep matematika yang Ananda temukan selanjutnya dapat digunakan untuk menyelesaikan permasalahan matematika yang lain. Bagian yg juga penting dari penggunaan aplikasi Geomath ini adalah untuk meningkatkan minat belajar Ananda dalam belajar matematika. Oleh karena itu, kehadiran aplikasi Geomath ini diharapkan dapat mendorong Ananda untuk mempelajari materi matematika yang disajikan dengan penuh pemahaman dan menginspirasi Ananda untuk mempelajari topik-topik matematika lainnya secara mandiri.",
      style: reguler12.copyWith(
        color: blue900,
        height: 1.35,
      ),
    );
  }
}
