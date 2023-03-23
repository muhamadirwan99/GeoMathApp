import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaThird() async {
  await showModalBottomSheet(
    context: globalContext,
    backgroundColor: Colors.transparent,
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
                        Text(
                          "Pre-test",
                          style: semiBold24.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Cobalah Ananda perhatikan gambar prisma berikut.",
                          style: reguler16.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-5.png?alt=media&token=0e1005b3-19c5-4910-bc1c-1fefa677a2e3",
                            height: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Apakah ciri-ciri Prisma yang Ananda sebutkan sebelumnya ada pada gambar diatas?",
                          style: reguler16.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  BerandaController.instance.statusYaPrisma =
                                      !BerandaController
                                          .instance.statusYaPrisma;
                                  BerandaController.instance.statusTidakPrisma =
                                      false;
                                });
                              },
                              child: BerandaController.instance.statusYaPrisma
                                  ? SvgPicture.asset(
                                      "assets/icon/update/radio_true.svg")
                                  : SvgPicture.asset(
                                      "assets/icon/update/radio_false.svg"),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              "Ya",
                              style: semiBold16.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  BerandaController.instance.statusTidakPrisma =
                                      !BerandaController
                                          .instance.statusTidakPrisma;
                                  BerandaController.instance.statusYaPrisma =
                                      false;
                                });
                              },
                              child:
                                  BerandaController.instance.statusTidakPrisma
                                      ? SvgPicture.asset(
                                          "assets/icon/update/radio_true.svg")
                                      : SvgPicture.asset(
                                          "assets/icon/update/radio_false.svg"),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              "Tidak",
                              style: semiBold16.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 193.0,
                        ),
                        ButtonDialog(
                          value: "Selesai",
                          onPressed: () {
                            BerandaController.instance.updatePretestPrisma();
                          },
                          status: BerandaController.instance.statusYaPrisma ||
                              BerandaController.instance.statusTidakPrisma,
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
