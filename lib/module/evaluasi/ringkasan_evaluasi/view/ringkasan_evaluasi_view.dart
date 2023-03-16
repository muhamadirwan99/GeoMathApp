import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class RingkasanEvaluasiView extends StatefulWidget {
  int questionLength, questionRight, kdMateri;
  RingkasanEvaluasiView({
    Key? key,
    required this.questionLength,
    required this.questionRight,
    required this.kdMateri,
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
            // ignore: deprecated_member_use
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
            onPressed: controller.imagePath == ""
                ? null
                : () {
                    controller.submitData(
                      questionLength,
                      questionRight,
                      kdMateri,
                    );
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
                  // ignore: deprecated_member_use
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
                  controller.imagePath != ""
                      ? Stack(
                          children: [
                            SizedBox(
                              width: 176,
                              height: 148,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    controller.imagePath,
                                    fit: BoxFit.fitHeight,
                                    height: 130,
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                child: GestureDetector(
                                  onTap: () {
                                    showImageViewer(
                                        context,
                                        Image.network(
                                          controller.imagePath,
                                        ).image,
                                        swipeDismissible: true,
                                        doubleTapZoomable: true);
                                  },
                                  child: SizedBox(
                                    height: 43.23,
                                    width: 43.23,
                                    child: CircleAvatar(
                                      backgroundColor:
                                          const Color.fromRGBO(0, 0, 0, 0.45),
                                      child: SvgPicture.asset(
                                        'assets/icon/update/zoom.svg',
                                        // ignore: deprecated_member_use
                                        color: neutral50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : InkWell(
                          onTap: () async {
                            XFile file = await getImage();
                            controller.imagePath =
                                await ApiService.uploadImage(file);
                            controller.update();
                          },
                          child: Container(
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
                        ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  controller.imagePath == ""
                      ? Text("Belum ada file terpilih.",
                          style: reguler14.copyWith(
                            color: blue850,
                          ))
                      : Container(),
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
