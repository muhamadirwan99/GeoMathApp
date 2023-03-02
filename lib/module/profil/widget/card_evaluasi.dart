// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class CardEvaluasi extends StatefulWidget {
  const CardEvaluasi({
    Key? key,
  }) : super(key: key);

  @override
  State<CardEvaluasi> createState() => _CardEvaluasiState();
}

class _CardEvaluasiState extends State<CardEvaluasi> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: neutral100, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Image.asset(
              "assets/illustration/thumbnail_limas.png",
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Materi Limas",
                      style: semiBold16.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      "100%",
                      style: semiBold16.copyWith(
                        color: primaryPurple,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17.0,
                ),
                Text(
                  "14/12/2023",
                  style: reguler10.copyWith(color: neutral900),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
