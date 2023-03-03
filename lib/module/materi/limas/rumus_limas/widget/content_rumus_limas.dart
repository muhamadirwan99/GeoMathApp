// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class ContentRumusLimas extends StatefulWidget {
  const ContentRumusLimas({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentRumusLimas> createState() => _ContentRumusLimasState();
}

class _ContentRumusLimasState extends State<ContentRumusLimas> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/materi/materi_limas.jpg"),
          Text(
            "Rumus Limas Segitiga",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(value: "Volume : ⅓ x (½ x a x t) x t"),
          const SizedBox(
            height: 8.0,
          ),
          const ContainerRumus(
              value: "LP : (½ x a x t) + (3 x luas sisi tegak)"),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Rumus Limas Segiempat",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(value: "Volume: ⅓ x (alas) x t"),
          const SizedBox(
            height: 8.0,
          ),
          const ContainerRumus(value: "LP : (s x s) + (4 x luas sisi tegak)"),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Rumus Limas Segilima",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(value: "Volume : ⅓ x (1,72 x s x s) x t"),
          const SizedBox(
            height: 8.0,
          ),
          const ContainerRumus(
              value: "LP : (1,72 x s x s) + (5 x luas sisi tegak)"),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
