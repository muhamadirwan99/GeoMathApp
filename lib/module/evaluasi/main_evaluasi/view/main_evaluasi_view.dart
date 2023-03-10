import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:lottie/lottie.dart';

class MainEvaluasiView extends StatefulWidget {
  const MainEvaluasiView({Key? key}) : super(key: key);

  Widget build(context, MainEvaluasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Evaluasi",
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
      backgroundColor: primaryPurple,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Lottie.asset('assets/json/evaluasi.json'),
            const SizedBox(
              height: 48.0,
            ),
            Text(
              "Apakah Anda siap?",
              style: semiBold32.copyWith(color: neutral50),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Apakah Anda merasa percaya diri? Di sini kamu akan menghadapi pertanyaan yang sangat menantang",
              style: reguler16.copyWith(color: neutral50, height: 1.5),
            ),
            const SizedBox(
              height: 66.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: neutral50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Get.to(const SoalEvaluasiView());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mulai",
                      style: semiBold16.copyWith(
                        color: primaryPurple,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    SvgPicture.asset("assets/icon/send_active.svg"),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  State<MainEvaluasiView> createState() => MainEvaluasiController();
}
