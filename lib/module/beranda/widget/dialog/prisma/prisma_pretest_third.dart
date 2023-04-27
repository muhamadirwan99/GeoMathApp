import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaThird() async {
  await showModalBottomSheet(
    context: globalContext,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return SingleChildScrollView(
        controller: ScrollController(),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: Container(
            color: neutral50,
            child: Column(
              children: [
                const SizedBox(
                  height: 44.0,
                ),
                Container(
                  height: 10,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: neutral150,
                    borderRadius: BorderRadius.all(
                      Radius.circular(32),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/image%2031.png?alt=media&token=0e89d657-d7ac-48a7-ba60-86030f4963b2",
                          height: 144,
                          width: 221.01,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Ciri - ciri bangun ruang pada gambar di atas memiliki :",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      FormLeftTitleNew(
                        title: "Titik Sudut",
                        hintText: "Isi jumlah titik sudut",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusTitikSudutPrisma3 =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusTitikSudutPrisma3 =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitleNew(
                        title: "Rusuk",
                        hintText: "Isi jumlah rusuk",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusRusukPrisma3 =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusRusukPrisma3 =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitleNew(
                        title: "Bidang",
                        hintText: "Isi jumlah bidang",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusBidangPrisma3 =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusBidangPrisma3 =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitleNew(
                        title: "Diagonal Bidang",
                        hintText: "Isi jumlah diagonal bidang",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController
                                .instance.statusDiagonalBidangPrisma3 = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusDiagonalBidangPrisma3 = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitleNew(
                        title: "Diagonal Ruang",
                        hintText: "Isi jumlah diagonal ruang",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController
                                .instance.statusDiagonalRuangPrisma3 = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusDiagonalRuangPrisma3 = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitleNew(
                        title: "Bidang Diagonal",
                        hintText: "Isi jumlah bidang diagonal",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController
                                .instance.statusBidangDiagonalPrisma3 = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusBidangDiagonalPrisma3 = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Dari gambar & ciri - ciri di atas, bangun ruang apakah aku?",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Isi jenis bangun ruang",
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 8,
                            top: 4,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: neutral500,
                              width: 2,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: primaryPurple,
                              width: 2,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController
                                .instance.statusJenisBangunRuangPrisma3 = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusJenisBangunRuangPrisma3 = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestPrismaFourth();
                        },
                        // status: true,
                        status:
                            BerandaController.instance.statusTitikSudutPrisma3 &&
                                BerandaController.instance.statusRusukPrisma3 &&
                                BerandaController
                                    .instance.statusBidangPrisma3 &&
                                BerandaController
                                    .instance.statusDiagonalBidangPrisma3 &&
                                BerandaController
                                    .instance.statusDiagonalRuangPrisma3 &&
                                BerandaController
                                    .instance.statusBidangDiagonalPrisma3 &&
                                BerandaController
                                    .instance.statusJenisBangunRuangPrisma3,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
