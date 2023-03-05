import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class DetailPrismaView extends StatefulWidget {
  const DetailPrismaView({Key? key}) : super(key: key);

  Widget build(context, DetailPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Video Tutorial",
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
      floatingActionButton: Container(
        color: neutral50,
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          right: 24,
          left: 24,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // Get.to(const LatihanLimasView());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Latihan",
                    style: semiBold16.copyWith(
                      color: neutral50,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  SvgPicture.asset(
                    "assets/icon/update/latihan.svg",
                    color: neutral50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                        child: FancyShimmerImage(
                          imageUrl: "https://i.ibb.co/sym6ybs/Limas1.png",
                          boxFit: BoxFit.fitWidth,
                          height: 214,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      "Limas",
                      style: semiBold20.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Limas merupakan bangun ruang yang alasnya berbentuk segibanyak (segitiga, segiempat, segilima, dan lain-lain). Pada limas, bidang sisi tegaknya berbentuk segitiga yang berpotongan pada satu titik.",
                      style: reguler16.copyWith(color: neutral900, height: 1.5),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Rumus",
                      style: semiBold20.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const ContainerRumus(
                        value: "Volume : ⅓ x luas alas x tinggi"),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const ContainerRumus(
                        value: "LP : Luas alas + jumlah luas sisi tegak"),
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
  State<DetailPrismaView> createState() => DetailPrismaController();
}
