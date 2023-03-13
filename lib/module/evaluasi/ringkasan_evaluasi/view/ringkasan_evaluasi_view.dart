import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class RingkasanEvaluasiView extends StatefulWidget {
  int questionLength, questionRight;
  RingkasanEvaluasiView({
    Key? key,
    required this.questionLength,
    required this.questionRight,
  }) : super(key: key);

  Widget build(context, RingkasanEvaluasiController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: neutral50,
      appBar: AppBar(
        title: const Text("Kembali"),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icon/update/left.svg",
            color: neutral50,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: neutral50,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: SizedBox(
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Get.offAll(
                HasilEvaluasiView(
                  questionLength: questionLength,
                  questionRight: questionRight,
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Submit",
                  style: GoogleFonts.lato().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                SvgPicture.asset(
                  "assets/icon/send_active.svg",
                  color: neutral50,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
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
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Ringkasan Evaluasi",
                      style: semiBold24.copyWith(color: blue850),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  ListView.builder(
                    itemCount: questionLength,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ContainerNumber(value: "No. ${index + 1}"),
                          const SizedBox(
                            height: 16.0,
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    children: [
                      Text(
                        "Unggah Jawaban ",
                        style: semiBold16.copyWith(
                          color: blue900,
                        ),
                      ),
                      Text(
                        "*",
                        style: semiBold16.copyWith(
                          color: danger500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "File yang didukung adalah .jpg, atau .png",
                    style: reguler14.copyWith(color: blue850),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icon/update/add_plus.svg",
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "klik untuk upload",
                          style: semiBold14.copyWith(
                            color: primaryPurple,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Belum ada file terpilih.",
                    style: reguler14.copyWith(
                      color: blue850,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<RingkasanEvaluasiView> createState() => RingkasanEvaluasiController();
}
