// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class BagianLimasView extends StatefulWidget {
  const BagianLimasView({Key? key}) : super(key: key);

  Widget build(context, BagianLimasController controller) {
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
            Get.to(const MenuNavView());
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FabMateriLimas(
        onPressedSelanjutnya: () {
          Get.to(
            const JaringLimasView(),
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
                  ContentBagianLimas(),
                  SizedBox(
                    height: 24.0,
                  ),
                  VideoTutorialLimas(),
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
  State<BagianLimasView> createState() => BagianLimasController();
}
