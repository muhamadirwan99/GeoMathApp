// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class ContentRumusPrisma extends StatefulWidget {
  const ContentRumusPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentRumusPrisma> createState() => _ContentRumusPrismaState();
}

class _ContentRumusPrismaState extends State<ContentRumusPrisma> {
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
            "Rumus Prisma Segitiga",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(value: "V = (½ x a x t) x tinggi"),
          const SizedBox(
            height: 8.0,
          ),
          const ContainerRumus(value: "Lp = (2 x a) + (kel alas x t)"),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Rumus Prisma Segiempat",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(value: "V = (1,72 x s x s) x tinggi"),
          const SizedBox(
            height: 8.0,
          ),
          const ContainerRumus(
              value: "Lp = (2x (1,72 x s x s)) + (kel alas x t)"),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Rumus Prisma Segilima",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(
              value: "L = 2 x luas alas + (keliling alas x tinggi prisma)"),
          const SizedBox(
            height: 8.0,
          ),
          const ContainerRumus(value: "V = ½ (5 x a x t) x tinggi prisma"),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Rumus Prisma Segienam",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const ContainerRumus(value: "L = 2 x luas alas + luas selimut"),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}