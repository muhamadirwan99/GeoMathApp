import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestLimasSecond() async {
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
                        "Coba Ananda sebutkan ciri-ciri bangun ruang berikut:",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-2.png?alt=media&token=e270e348-4f89-4f95-b6eb-0127f8d7714c",
                          height: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Titik Sudut",
                        style: semiBold14.copyWith(color: neutral700),
                      ),
                      FormDialog(
                        hintText: "Isi jumlah titik sudut",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusTitikSudut = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusTitikSudut = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Rusuk",
                        style: semiBold14.copyWith(color: neutral700),
                      ),
                      FormDialog(
                        hintText: "Isi jumlah rusuk",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusRusukLimas = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusRusukLimas = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Sisi Alas",
                        style: semiBold14.copyWith(color: neutral700),
                      ),
                      FormDialog(
                        hintText: "Isi jumlah sisi alas",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusSisiAlas = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusSisiAlas = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Sisi Tegak",
                        style: semiBold14.copyWith(color: neutral700),
                      ),
                      FormDialog(
                        hintText: "Isi jumlah sisi tegak",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusSisiTegak = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusSisiTegak = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestLimasThird();
                        },
                        status: BerandaController.instance.statusTitikSudut &&
                            BerandaController.instance.statusRusukLimas &&
                            BerandaController.instance.statusSisiAlas &&
                            BerandaController.instance.statusSisiTegak,
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
