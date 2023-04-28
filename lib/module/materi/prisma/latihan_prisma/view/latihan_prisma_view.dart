// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class LatihanPrismaView extends StatefulWidget {
  const LatihanPrismaView({Key? key}) : super(key: key);

  Widget build(context, LatihanPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Latihan",
          style: semiBold24.copyWith(
            color: neutral100,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icon/update/left.svg",
            color: neutral50,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FabEvaluasiPrisma(),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 38),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Container(
            color: primaryPurple,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: neutral50,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/materi/latihan_prisma.png",
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Text(
                      "Contoh Soal Volume Prisma Segitiga",
                      style: semiBold20.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Tentukan luas permukaan dan volume prisma tersebut.",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Pembahasan",
                      style: semiBold20.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Rumus:",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const ContainerRumus(
                        value:
                            "Luas permukaan = (2 x luas alas) + (keliling alas x tinggi)"),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '''
Luas alas = ½ x alas x tinggi 
Luas alas = ½ x 6 x 4 
Luas alas = 12 cm persegi.

Keliling alas = 6 + 5 + 5 
Keliling alas = 16 cm.
              ''',
                      style: reguler16.copyWith(color: neutral900),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LatihanPrismaView> createState() => LatihanPrismaController();
}
