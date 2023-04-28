import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestLimasFirst() async {
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
                        Row(
                          children: [
                            Text(
                              "Limas di atas memiliki...",
                              style: reguler16.copyWith(
                                color: blue900,
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Isi Jumlah Sisi",
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
                                        .instance.statusJumlahSisiLimas = true;
                                    BerandaController.instance.update();
                                  } else {
                                    BerandaController
                                        .instance.statusJumlahSisiLimas = false;
                                    BerandaController.instance.update();
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              "Sisi",
                              style: semiBold16.copyWith(
                                color: blue900,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Luas untuk setiap sisi :",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        FormLeftTitle(
                          title: "Sisi Alas      :",
                          hintText: "Isi Luas Sisi Alas",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              BerandaController
                                  .instance.statusLuasSisiAlasLimas = true;
                              BerandaController.instance.update();
                            } else {
                              BerandaController
                                  .instance.statusLuasSisiAlasLimas = false;
                              BerandaController.instance.update();
                            }
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        FormLeftTitle(
                          title: "Sisi Tegak   :",
                          hintText: "Isi Luas Sisi Tegak",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              BerandaController
                                  .instance.statusLuasSisiTegakLimas = true;
                              BerandaController.instance.update();
                            } else {
                              BerandaController
                                  .instance.statusLuasSisiTegakLimas = false;
                              BerandaController.instance.update();
                            }
                          },
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Maka Luas Permukaan Limas adalah =",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Isi Luas Permukaan",
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
                                  .instance.statusLuasPermukaanLimas = true;
                              BerandaController.instance.update();
                            } else {
                              BerandaController
                                  .instance.statusLuasPermukaanLimas = false;
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
                            showMidtestLimasSecond();
                          },
                          status: BerandaController
                                  .instance.statusJumlahSisiLimas &&
                              BerandaController
                                  .instance.statusLuasSisiAlasLimas &&
                              BerandaController
                                  .instance.statusLuasSisiTegakLimas &&
                              BerandaController
                                  .instance.statusLuasPermukaanLimas,
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
