// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';

class CardStatus extends StatefulWidget {
  const CardStatus({
    Key? key,
  }) : super(key: key);

  @override
  State<CardStatus> createState() => _CardStatusState();
}

class _CardStatusState extends State<CardStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryPurple,
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset("assets/icon/update/star.svg"),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Poin",
                    style: reguler16.copyWith(color: neutral50),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "100",
                    style: semiBold20.copyWith(color: neutral50),
                  ),
                ],
              ),
              const VerticalDivider(
                color: blue400,
                thickness: 1,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/icon/update/book.svg"),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Pertanyaan",
                    style: reguler16.copyWith(color: neutral50),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "5",
                    style: semiBold20.copyWith(color: neutral50),
                  ),
                ],
              ),
              const VerticalDivider(
                color: blue400,
                thickness: 1,
              ),
              Column(
                children: [
                  SvgPicture.asset("assets/icon/update/target.svg"),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Akurasi",
                    style: reguler16.copyWith(color: neutral50),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "100%",
                    style: semiBold20.copyWith(color: neutral50),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
