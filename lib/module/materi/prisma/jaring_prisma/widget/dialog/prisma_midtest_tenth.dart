import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaTenth() async {
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
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/mid_test_prisma.png?alt=media&token=12007404-f4ea-46a5-a2e6-4ca4061712f2",
                          height: 144,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Prisma memiliki",
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
                                hintText: "Isi Jumlah Sisi Alas",
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
                                  JaringPrismaController
                                      .instance.sisiAlasVolumePrisma = true;
                                  JaringPrismaController.instance.update();
                                } else {
                                  JaringPrismaController
                                      .instance.sisiAlasVolumePrisma = false;
                                  JaringPrismaController.instance.update();
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            "Sisi Alas",
                            style: semiBold16.copyWith(
                              color: blue900,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Prisma memiliki",
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
                                hintText: "Isi Jumlah Sisi Tinggi",
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
                                  JaringPrismaController
                                      .instance.sisiTinggiVolumePrisma = true;
                                  JaringPrismaController.instance.update();
                                } else {
                                  JaringPrismaController
                                      .instance.sisiTinggiVolumePrisma = false;
                                  JaringPrismaController.instance.update();
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            "Sisi Tinggi",
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
                        "Maka Volume Prisma adalah :",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Isi Volume Prisma",
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
                            JaringPrismaController.instance.volumePrisma = true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.volumePrisma =
                                false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 208,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showMidtestPrismaEleventh();
                        },
                        status: JaringPrismaController
                                .instance.sisiAlasVolumePrisma &&
                            JaringPrismaController
                                .instance.sisiTinggiVolumePrisma &&
                            JaringPrismaController.instance.volumePrisma,
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
