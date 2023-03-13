import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HasilEvaluasiView extends StatefulWidget {
  int questionRight, questionLength;
  HasilEvaluasiView({
    Key? key,
    required this.questionRight,
    required this.questionLength,
  }) : super(key: key);

  Widget build(context, HasilEvaluasiController controller) {
    controller.view = this;

    double percent = questionRight / questionLength;

    return Scaffold(
      backgroundColor: neutral50,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: neutral50,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: SizedBox(
          height: 48,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Get.offAll(const MenuNavView());
            },
            child: Text(
              "Selesai",
              style: GoogleFonts.lato().copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: primaryPurple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      24,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 32,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: neutral100,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          child: Text(
                            "Evaluasi Selesai",
                            style: reguler12.copyWith(color: primaryPurple),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      Text(
                        "Selamat",
                        style: semiBold24.copyWith(color: neutral50),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "Kamu mendapatkan nilai :",
                        style: reguler24.copyWith(color: neutral50),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 25.0,
                        percent: percent,
                        center: CircleAvatar(
                          radius: 55.0,
                          backgroundColor: blue50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${(percent * 100).round()}",
                                style: semiBold32.copyWith(color: neutral800),
                              ),
                              Text(
                                "Poin",
                                style:
                                    semiBold16.copyWith(color: primaryPurple),
                              ),
                            ],
                          ),
                        ),
                        backgroundColor: neutral50,
                        progressColor: primaryYellow,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: blue150, width: 2),
                        color: neutral50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/update/tick_square.svg",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Jawaban Benar",
                                    style: semiBold12.copyWith(
                                        color: primaryPurple),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "$questionRight Pertanyaan",
                              style: semiBold20.copyWith(color: neutral800),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: blue150, width: 2),
                        color: neutral50,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icon/update/akurasi.svg",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Akurasi",
                                  style:
                                      semiBold12.copyWith(color: primaryPurple),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "${(percent * 100).round()}%",
                              style: semiBold20.copyWith(color: neutral800),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HasilEvaluasiView> createState() => HasilEvaluasiController();
}
