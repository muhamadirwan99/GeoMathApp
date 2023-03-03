import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 38,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: neutral50,
                  side: const BorderSide(width: 2, color: primaryPurple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                onPressed: () {
                  showGeneralDialog(
                    context: context,
                    barrierColor: Colors.black54,
                    barrierDismissible: true,
                    barrierLabel: 'Daftar',
                    pageBuilder: (_, __, ___) {
                      return Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, bottom: 84),
                          child: Container(
                            height: 160.0,
                            decoration: const BoxDecoration(
                              color: neutral50,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextDaftarIsi(
                                    value: "Bagian - Bagian Limas",
                                    onTap: () {
                                      Get.to(
                                        const BagianLimasView(),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 16.0,
                                  ),
                                  TextDaftarIsi(
                                    value: "Jaring - Jaring Limas",
                                    onTap: () {
                                      Get.to(
                                        const JaringLimasView(),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 16.0,
                                  ),
                                  TextDaftarIsi(
                                    value: "Rumus Limas",
                                    onTap: () {
                                      Get.to(
                                        const RumusLimasView(),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 16.0,
                                  ),
                                  TextDaftarIsi(
                                    value: "Latihan Soal",
                                    onTap: () {
                                      Get.to(
                                        const LatihanLimasView(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                  // showDialogDetail(context);
                },
                child: SvgPicture.asset(
                  "assets/icon/daftar_isi.svg",
                  color: primaryPurple,
                ),
              ),
            ),
            SizedBox(
              height: 38,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Selanjutnya",
                      style: GoogleFonts.lato().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    SvgPicture.asset(
                      "assets/icon/arrow_right.svg",
                      color: neutral50,
                    ),
                  ],
                ),
              ),
            ),
          ],
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/materi/materi_limas.jpg"),
                        Text(
                          "Bagian - bagian Limas",
                          style: semiBold20.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Gambar di atas adalah limas segiempat. Bagian-bagian dari limas adalah sebagai berikut :",
                          style: reguler16.copyWith(
                            color: neutral900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1.",
                                  style: reguler16.copyWith(color: neutral900),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Sisi : ABCD = sisi alas, sisi yang lain adalah TAB, TBC, TCD, TDA.",
                                    style:
                                        reguler16.copyWith(color: neutral900),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2.",
                                  style: reguler16.copyWith(color: neutral900),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Rusuk : TA, TB, TC dan TD adalah rusuk tegak. Rusuk yang lain AB, BC, CD dan AD.",
                                    style:
                                        reguler16.copyWith(color: neutral900),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "3.",
                                  style: reguler16.copyWith(color: neutral900),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Titik sudut : T, A, B, C dan D merupakan titik sudut dan T dinamakan titik puncak limas.",
                                    style:
                                        reguler16.copyWith(color: neutral900),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "4.",
                                  style: reguler16.copyWith(color: neutral900),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Tinggi limas : Garis yang ditarik dari T tegak lurus bidang alas disebut tinggi limas. Pada gambar tinggi limas adalah TO.",
                                    style:
                                        reguler16.copyWith(color: neutral900),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "5.",
                                  style: reguler16.copyWith(color: neutral900),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "Bidang Diagonal : TAC dan TBD adalah bidang diagonal.",
                                    style:
                                        reguler16.copyWith(color: neutral900),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Video Tutorial 🤝",
                              style: semiBold20.copyWith(
                                color: neutral900,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Lainnya",
                                style: semiBold20.copyWith(
                                  color: primaryPurple,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 180,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: neutral100, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                      "assets/illustration/card_image.png"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Matematika Dasar : Pendahuluan Limas",
                                        style: semiBold10.copyWith(
                                            color: neutral900),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        "Video ini menceritakan mengenai pengenalan bentuk limas dalam BAB Geometri.",
                                        style: reguler10.copyWith(
                                            color: neutral900),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
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
