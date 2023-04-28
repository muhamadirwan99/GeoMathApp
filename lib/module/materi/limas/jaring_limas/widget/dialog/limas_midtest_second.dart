import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestLimasSecond() async {
  await showModalBottomSheet(
    context: globalContext,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
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
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-4.png?alt=media&token=174ee587-3049-4a61-8de8-f03c0b705223",
                            height: 141,
                          ),
                        ),
                        Text(
                          "Limas memiliki :",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        FormRightTitle(
                          title: "Sisi Alas",
                          hintText: "Isi Jumlah Sisi Alas",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              BerandaController
                                  .instance.statusJumlahSisiAlasLimas = true;
                              BerandaController.instance.update();
                            } else {
                              BerandaController
                                  .instance.statusJumlahSisiAlasLimas = false;
                              BerandaController.instance.update();
                            }
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        FormRightTitle(
                          title: "Sisi Tinggi",
                          hintText: "Isi Jumlah Sisi Tinggi",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              BerandaController
                                  .instance.statusJumlahSisiTinggiLimas = true;
                              BerandaController.instance.update();
                            } else {
                              BerandaController
                                  .instance.statusJumlahSisiTinggiLimas = false;
                              BerandaController.instance.update();
                            }
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        FormLeftTitle(
                          title: "Maka, Volume Limas =",
                          hintText: "Isi Volume Limas",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              BerandaController.instance.statusVolumeLimas =
                                  true;
                              BerandaController.instance.update();
                            } else {
                              BerandaController.instance.statusVolumeLimas =
                                  false;
                              BerandaController.instance.update();
                            }
                          },
                        ),
                        const SizedBox(
                          height: 248.0,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showMidtestLimasThird();
                          },
                          status: BerandaController
                                  .instance.statusJumlahSisiAlasLimas &&
                              BerandaController
                                  .instance.statusJumlahSisiTinggiLimas &&
                              BerandaController.instance.statusVolumeLimas,
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
      });
    },
  );
}
