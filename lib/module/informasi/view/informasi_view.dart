import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class InformasiView extends StatefulWidget {
  const InformasiView({Key? key}) : super(key: key);

  Widget build(context, InformasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Informasi",
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
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icon/update/info.svg",
                                color: primaryPurple,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Informasi",
                                style: semiBold20.copyWith(color: neutral900),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          ExpansionTile(
                            title: Text(
                              "Tentang Aplikasi",
                              style: semiBold16.copyWith(
                                color: blue900,
                              ),
                            ),
                            leading: SvgPicture.asset(
                              "assets/icon/update/app_shortcut.svg",
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "1.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Media pembelajaran ini berisi teori dan evaluasi materi.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "2.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Teori disediakan untuk mempelajari secara singkat tentang materi limas dan prisma tegak.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "3.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Disetiap materi disediakan evaluasi yang harus dikerjakan untuk bisa melanjutkan ke materi yang lain.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "4.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Evaluasi materi digunakan untuk mengukur penguasaan materi limas dan prisma tegak.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          ExpansionTile(
                            title: Text(
                              "Petunjuk Pengunaan",
                              style: semiBold16.copyWith(
                                color: blue900,
                              ),
                            ),
                            leading: SvgPicture.asset(
                              "assets/icon/update/touch.svg",
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16,
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "1.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 8.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Pilih materi yang ingin dipelajari.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "2.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Pelajari materi tersebut dengan seksama baik itu melalui materi bacaan atau melalui video yang telah disediakan.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "3.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Setelah merasa yakin sudah menguasai materi, silakan untuk melakukan latihan soal.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "4.",
                                          style: reguler12.copyWith(
                                              color: blue900),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Setelah selesai melakukan latihan soal, anda bisa mengisi evaluasi.",
                                            style: reguler12.copyWith(
                                                color: blue900),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
  State<InformasiView> createState() => InformasiController();
}
