import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaFourth() async {
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
                                  JaringPrismaController.instance.sisiPrisma =
                                      true;
                                  JaringPrismaController.instance.update();
                                } else {
                                  JaringPrismaController.instance.sisiPrisma =
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
                            JaringPrismaController.instance.sisiAlasPrisma =
                                true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.sisiAlasPrisma =
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
                            JaringPrismaController.instance.sisiTegakPrisma =
                                true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.sisiTegakPrisma =
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
                            JaringPrismaController.instance.sisiAtasPrisma =
                                true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.sisiAtasPrisma =
                                false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Maka Luas Permukaan Prisma adalah :",
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
                            JaringPrismaController.instance.luasPrisma = true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.luasPrisma = false;
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
                          showMidtestPrismaFifth();
                        },
                        status: JaringPrismaController.instance.sisiPrisma &&
                            JaringPrismaController.instance.sisiAlasPrisma &&
                            JaringPrismaController.instance.sisiTegakPrisma &&
                            JaringPrismaController.instance.sisiAtasPrisma &&
                            JaringPrismaController.instance.luasPrisma,
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
