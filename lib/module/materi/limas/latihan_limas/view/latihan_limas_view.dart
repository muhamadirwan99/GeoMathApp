// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class LatihanLimasView extends StatefulWidget {
  const LatihanLimasView({Key? key}) : super(key: key);

  Widget build(context, LatihanLimasController controller) {
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
      floatingActionButton: const FabEvaluasiLimas(),
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
                        "assets/materi/latihan_limas.png",
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Text(
                      "Contoh Soal Volume Limas Segiempat",
                      style: semiBold20.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Sebuah limas T.KLMN memiliki bidang alas berbentuk persegi panjang. Panjangnya 10 cm dan lebarnya 8 cm. Jika tinggi limas 12 cm, berapa volume limas segi empat tersebut?",
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
                      "Untuk menghitung volume Limas Segiempat, menggunakan rumus:",
                      style: reguler16.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const ContainerRumus(value: "Volume: ⅓ x alas x t"),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '''
Diketahui :
p = 10 cm, l = 8 cm dan t = 12 cm. Maka caranya adalah:
V = ⅓ x alas x t
V = ⅓ x (pxl) x t
V = ⅓ x (10x8) x 12
V = ⅓ x 80 x 12
V = 320 cm3
              ''',
                      style: reguler16.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 36.0,
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
  State<LatihanLimasView> createState() => LatihanLimasController();
}
