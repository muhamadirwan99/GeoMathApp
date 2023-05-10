import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaFifth() async {
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
                        Text(
                          "Perhatikan gambar-gambar yang disajikan dibawah ini. Jelaskan ciri-ciri dari setiap gambar tersebut:",
                          style: reguler16.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Gambar%20(Download%20disini).png?alt=media&token=c47af109-10a9-4c4d-894c-e9019e22ca8c",
                          height: 100,
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
                              BerandaController.instance.statusPersamaan =
                                  false;
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
                              BerandaController.instance.statusPerbedaan =
                                  false;
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
                            showPretestPrismaSixth();
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
      });
}
