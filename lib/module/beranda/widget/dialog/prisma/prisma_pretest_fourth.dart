import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaFourth() async {
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
                            "Sekarang, coba Ananda perhatikan gambar balok berikut. ",
                            style: reguler16.copyWith(color: blue900),
                          ),
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
                          Text(
                            "Apakah ciri - ciri balok yang Ananda sebutkan sebelumnya ada pada gambar di atas?",
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
                                            .instance.statusYaPrismaFourth =
                                        !BerandaController
                                            .instance.statusYaPrismaFourth;
                                    BerandaController.instance
                                        .statusTidakPrismaFourth = false;
                                  });
                                },
                                child: BerandaController
                                        .instance.statusYaPrismaFourth
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
                                            .instance.statusTidakPrismaFourth =
                                        !BerandaController
                                            .instance.statusTidakPrismaFourth;
                                    BerandaController
                                        .instance.statusYaPrismaFourth = false;
                                  });
                                },
                                child: BerandaController
                                        .instance.statusTidakPrismaFourth
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
                          BerandaController.instance.statusTidakPrismaFourth
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
                            height: 190,
                          ),
                          ButtonDialog(
                            value: "Selanjutnya",
                            onPressed: () {
                              showPretestPrismaFifth();
                            },
                            status:
                                BerandaController.instance.statusYaPrismaFourth,
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
