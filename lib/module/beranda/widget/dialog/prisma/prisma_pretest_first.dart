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
                        "Perhatikan gambar-gambar yang disajikan dibawah ini. Jelaskan ciri-ciri dari setiap gambar tersebut:",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-1.png?alt=media&token=39ec981c-10ea-4b85-8e33-2f619b09f41c",
                            height: 100,
                            width: 100,
                          ),
                          FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-2.png?alt=media&token=0d643999-385f-4d96-add2-5c1121859db9",
                            height: 100,
                            width: 100,
                          ),
                          FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-3.png?alt=media&token=0033e3d5-caaf-4df9-8e10-cdcc894243a5",
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Sekarang, cobalah Ananda tuliskan persamaan dan perbedaan dari ketiga gambar diatas.",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Persamaan dari ketiga gambar adalah:",
                        style: semiBold14.copyWith(color: neutral700),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormDialog(
                        hintText: "Isi persamaan dari gambar",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusPersamaan = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusPersamaan = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Perbedaan dari ketiga gambar adalah:",
                        style: semiBold14.copyWith(color: neutral700),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormDialog(
                        hintText: "Isi perbedaan dari gambar",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusPerbedaan = true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusPerbedaan = false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 71.0,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestPrismaSecond();
                        },
                        status: BerandaController.instance.statusPerbedaan &&
                            BerandaController.instance.statusPersamaan,
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
