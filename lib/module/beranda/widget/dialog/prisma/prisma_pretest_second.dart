import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaSecond() async {
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
                  height: 24.0,
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
                      Text(
                        "Pre-test",
                        style: semiBold24.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Coba Ananda sebutkan ciri-ciri bangun ruang berikut:",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-4.png?alt=media&token=90cef6b7-e96b-4cad-a118-c59aa737bbb7",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Sekarang, cobalah Ananda tuliskan ciri-ciri dari gambar diatas.",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TwoFormDialog(
                        titleLeft: "Titik Sudut",
                        hintLeft: "Isi jumlah titik sudut",
                        onChangedLeft: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusSudut = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusSudut = false;
                            BerandaController.instance.update();
                          }
                        },
                        titleRight: "Rusuk",
                        hintRight: "Isi jumlah rusuk",
                        onChangedRight: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusRusuk = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusRusuk = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TwoFormDialog(
                        titleLeft: "Bidang",
                        hintLeft: "Isi jumlah bidang",
                        onChangedLeft: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusBidang = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusBidang = false;
                            BerandaController.instance.update();
                          }
                        },
                        titleRight: "Diagonal Bidang",
                        hintRight: "Isi jumlah diagonal bidang",
                        onChangedRight: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusDiagonalBidang =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusDiagonalBidang =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      TwoFormDialog(
                        titleLeft: "Diagonal Ruang",
                        hintLeft: "Isi diagonal ruang",
                        onChangedLeft: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusDiagonalRuang =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusDiagonalRuang =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                        titleRight: "Bidang Diagonal",
                        hintRight: "Isi bidang diagonal",
                        onChangedRight: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusBidangDiagonal =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusBidangDiagonal =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 48.0,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestPrismaThird();
                        },
                        status: BerandaController.instance.statusSudut &&
                            BerandaController.instance.statusRusuk &&
                            BerandaController.instance.statusBidang &&
                            BerandaController.instance.statusDiagonalBidang &&
                            BerandaController.instance.statusDiagonalRuang &&
                            BerandaController.instance.statusBidangDiagonal,
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
