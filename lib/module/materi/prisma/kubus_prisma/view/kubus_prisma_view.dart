import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class KubusPrismaView extends StatefulWidget {
  const KubusPrismaView({Key? key}) : super(key: key);

  Widget build(context, KubusPrismaController controller) {
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
            const BalokPrismaView(),
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
                  ContentKubusPrisma(),
                  SizedBox(
                    height: 24.0,
                  ),
                  VideoTutorialPrisma(),
                  SizedBox(
                    height: 50,
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
  State<KubusPrismaView> createState() => KubusPrismaController();
}
