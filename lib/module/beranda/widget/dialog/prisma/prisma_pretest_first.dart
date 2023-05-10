import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaFirst() async {
  await showModalBottomSheet(
    context: globalContext,
    backgroundColor: Colors.transparent,
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
                        child:
                            SvgPicture.asset("assets/materi/dadu_prisma.svg"),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Aku adalah sebuah bangun ruang seperti gambar di atas yang memiliki ciri-ciri berikut:",
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
                            BerandaController.instance.statusTitikSudutPrisma =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusTitikSudutPrisma =
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
                            BerandaController.instance.statusRusukPrisma = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusRusukPrisma =
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
                            BerandaController.instance.statusBidangPrisma =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusBidangPrisma =
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
                                .instance.statusDiagonalBidangPrisma = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusDiagonalBidangPrisma = false;
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
                                .instance.statusDiagonalRuangPrisma = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusDiagonalRuangPrisma = false;
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
                                .instance.statusBidangDiagonalPrisma = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusBidangDiagonalPrisma = false;
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
                                .instance.statusJenisBangunRuangPrisma = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController
                                .instance.statusJenisBangunRuangPrisma = false;
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
                          showPretestPrismaSecond();
                        },
                        status: true,
                        // status:
                        //     BerandaController.instance.statusTitikSudutPrisma &&
                        //         BerandaController.instance.statusRusukPrisma &&
                        //         BerandaController.instance.statusBidangPrisma &&
                        //         BerandaController
                        //             .instance.statusDiagonalBidangPrisma &&
                        //         BerandaController
                        //             .instance.statusDiagonalRuangPrisma &&
                        //         BerandaController
                        //             .instance.statusBidangDiagonalPrisma &&
                        //         BerandaController
                        //             .instance.statusJenisBangunRuangPrisma,
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
