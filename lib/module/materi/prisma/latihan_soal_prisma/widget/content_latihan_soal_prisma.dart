// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ContentLatihanSoalPrisma extends StatefulWidget {
  const ContentLatihanSoalPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<ContentLatihanSoalPrisma> createState() =>
      _ContentLatihanSoalPrismaState();
}

class _ContentLatihanSoalPrismaState extends State<ContentLatihanSoalPrisma> {
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
            "Latihan Soal ",
            style: semiBold20.copyWith(color: neutral900),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Tentukanlah unsur - unsur bangun ruang sisi datar dengan memberikan keterangan dari gambar berikut pada kolom isian!",
            style: reguler16.copyWith(
              color: neutral900,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: FancyShimmerImage(
              imageUrl:
                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Latihan%20Prisma.png?alt=media&token=d65e51af-0442-46cf-8e05-e2207dedb82b",
              height: 201.5,
              width: 210,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "Unsur Bangun Ruang",
            style: semiBold14.copyWith(color: neutral700),
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextFormField(
            style: reguler14.copyWith(color: neutral500),
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              hintText: 'Isi unsur bangun ruang pada gambar',
              isDense: true,
              contentPadding: const EdgeInsets.all(12),
              hintStyle: reguler14.copyWith(color: neutral500),
              errorStyle: const TextStyle(height: 0.7),
              errorMaxLines: 1,
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: danger500, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryPurple, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: neutral500, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: danger500, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: neutral500, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            onChanged: (value) {
              if (value.isNotEmpty) {
                LatihanSoalPrismaController.instance.statusUnsurBangunRuang =
                    true;
                LatihanSoalPrismaController.instance.update();
              } else {
                LatihanSoalPrismaController.instance.statusUnsurBangunRuang =
                    false;
                LatihanSoalPrismaController.instance.update();
              }
            },
          )
        ],
      ),
    );
  }
}
