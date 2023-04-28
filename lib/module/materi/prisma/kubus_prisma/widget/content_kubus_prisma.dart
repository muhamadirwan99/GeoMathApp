// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentKubusPrisma extends StatefulWidget {
  const ContentKubusPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentKubusPrisma> createState() => _ContentKubusPrismaState();
}

class _ContentKubusPrismaState extends State<ContentKubusPrisma> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            "Kubus",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Kubus terdiri atas beberapa bagian diantaranya titik sudut, rusuk, sisi, diagonal bidang dan diagonal ruang.",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Kubus.png?alt=media&token=c5410b37-3716-4d85-96f3-a22b47fb5cb2",
              height: 164.5,
              width: 233.5,
            ),
          ),
        ],
      ),
    );
  }
}
