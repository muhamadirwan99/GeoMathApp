import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class MainEvaluasiView extends StatefulWidget {
  int kdMateri;
  MainEvaluasiView({Key? key, required this.kdMateri}) : super(key: key);

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
            // ignore: deprecated_member_use
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
              "Apakah Ananda siap?",
              style: semiBold32.copyWith(color: neutral50),
            ),
            const SizedBox(
              height: 16.0,
            ),
            kdMateri == 2
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Siapkan lembar jawaban untuk mengisi jawaban dari soal yang akan ditampilkan di aplikasi. ",
                        style:
                            reguler16.copyWith(color: neutral50, height: 1.5),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Selamat mengerjakan.",
                        style:
                            reguler16.copyWith(color: neutral50, height: 1.5),
                      ),
                    ],
                  )
                : Text(
                    "Apakah Anda merasa percaya diri? Di sini kamu akan menghadapi pertanyaan yang sangat menantang",
                    style: reguler16.copyWith(color: neutral50, height: 1.5),
                  ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: neutral50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                controller.navSoal(kdMateri);
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
