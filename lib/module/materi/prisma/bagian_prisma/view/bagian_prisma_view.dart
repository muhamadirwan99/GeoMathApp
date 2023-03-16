// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class BagianPrismaView extends StatefulWidget {
  const BagianPrismaView({Key? key}) : super(key: key);

  Widget build(context, BagianPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Materi Pembelajaran",
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
      floatingActionButton: FabMateriPrisma(
        onPressedSelanjutnya: () {
          Get.to(
            const JaringPrismaView(),
          );
        },
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
              child: Column(
                children: const [
                  ContentBagianPrisma(),
                  SizedBox(
                    height: 24.0,
                  ),
                  VideoTutorialPrisma(),
                  SizedBox(
                    height: 32.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<BagianPrismaView> createState() => BagianPrismaController();
}
