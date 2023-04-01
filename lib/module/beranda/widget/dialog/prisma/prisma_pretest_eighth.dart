import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaEighth() async {
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
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-6.png?alt=media&token=bf57b880-3b96-495b-99b8-ba5b81988c33",
                          height: 187,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Text(
                        "Prisma memiliki :",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FormRightTitle(
                        title: "Sisi Alas",
                        hintText: "Isi Jumlah Sisi Alas",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusJumlahSisiAlas =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusJumlahSisiAlas =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FormRightTitle(
                        title: "Sisi Tinggi",
                        hintText: "Isi Jumlah Sisi Tinggi",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusJumlahSisiTinggi =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusJumlahSisiTinggi =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FormLeftTitle(
                        title: "Maka, Volume Prisma =",
                        hintText: "Isi Volume Prisma",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusVolumePrisma =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusVolumePrisma =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 210,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestPrismaNinth();
                        },
                        status: BerandaController
                                .instance.statusJumlahSisiAlas &&
                            BerandaController.instance.statusJumlahSisiTinggi &&
                            BerandaController.instance.statusVolumePrisma,
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
