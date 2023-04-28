import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaThird() async {
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
                      Center(
                        child: FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/image%2030.png?alt=media&token=5a3a2606-5e36-4ea9-bd00-a1fb9cf6aae8",
                          height: 144,
                          width: 221.01,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Balok memiliki",
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
                                  JaringPrismaController.instance.sisiBalok =
                                      true;
                                  JaringPrismaController.instance.update();
                                } else {
                                  JaringPrismaController.instance.sisiBalok =
                                      false;
                                  JaringPrismaController.instance.update();
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
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Luas untuk setiap sisi :",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 27.0,
                      ),
                      FormLeftTitle(
                        title: "Sisi Alas    :",
                        hintText: "Isi rumus sisi",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            JaringPrismaController.instance.sisiAlasBalok =
                                true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.sisiAlasBalok =
                                false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      FormLeftTitle(
                        title: "Sisi Tegak :",
                        hintText: "Isi rumus sisi",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            JaringPrismaController.instance.sisiTegakBalok =
                                true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.sisiTegakBalok =
                                false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      FormLeftTitle(
                        title: "Sisi Atas    :",
                        hintText: "Isi rumus sisi",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            JaringPrismaController.instance.sisiAtasBalok =
                                true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.sisiAtasBalok =
                                false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Maka Luas Permukaan Balok adalah :",
                        style: reguler16.copyWith(color: blue900),
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
                            JaringPrismaController.instance.luasBalok = true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.luasBalok = false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 87,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showMidtestPrismaFourth();
                        },
                        status: JaringPrismaController.instance.sisiBalok &&
                            JaringPrismaController.instance.sisiAlasBalok &&
                            JaringPrismaController.instance.sisiTegakBalok &&
                            JaringPrismaController.instance.sisiAtasBalok &&
                            JaringPrismaController.instance.luasBalok,
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
