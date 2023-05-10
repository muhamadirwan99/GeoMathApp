import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaSecond() async {
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
                          Text(
                            "Sekarang, coba Ananda perhatikan gambar kubus berikut. ",
                            style: reguler16.copyWith(color: blue900),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Center(
                            child: FancyShimmerImage(
                              imageUrl:
                                  "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/image%2029.png?alt=media&token=d050aa6a-98e9-4cc1-81ad-8fa54f40a117",
                              height: 138,
                              width: 144,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "Apakah ciri - ciri kubus yang Ananda sebutkan sebelumnya ada pada gambar di atas?",
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
                                    BerandaController
                                            .instance.statusYaPrismaSecond =
                                        !BerandaController
                                            .instance.statusYaPrismaSecond;
                                    BerandaController.instance
                                        .statusTidakPrismaSecond = false;
                                  });
                                },
                                child: BerandaController
                                        .instance.statusYaPrismaSecond
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
                                    BerandaController
                                            .instance.statusTidakPrismaSecond =
                                        !BerandaController
                                            .instance.statusTidakPrismaSecond;
                                    BerandaController
                                        .instance.statusYaPrismaSecond = false;
                                  });
                                },
                                child: BerandaController
                                        .instance.statusTidakPrismaSecond
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
                          BerandaController.instance.statusTidakPrismaSecond
                              ? Column(
                                  children: const [
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    LabelSalah(),
                                  ],
                                )
                              : Container(),
                          const SizedBox(
                            height: 195.67,
                          ),
                          ButtonDialog(
                            value: "Selanjutnya",
                            onPressed: () {
                              showPretestPrismaThird();
                            },
                            status:
                                BerandaController.instance.statusYaPrismaSecond,
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
    },
  );
}
