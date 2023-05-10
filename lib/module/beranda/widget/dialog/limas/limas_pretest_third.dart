import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestLimasThird() async {
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
                          "Cobalah Ananda perhatikan gambar limas berikut.",
                          style: reguler16.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-3.png?alt=media&token=b87ada8d-d4a2-4d3f-8a61-d3e2c52d3bb5",
                            height: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Apakah ciri-ciri limas yang Ananda sebutkan sebelumnya ada pada gambar diatas?",
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
                                  BerandaController.instance.statusYaLimas =
                                      !BerandaController.instance.statusYaLimas;
                                  BerandaController.instance.statusTidakLimas =
                                      false;
                                });
                              },
                              child: BerandaController.instance.statusYaLimas
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
                                  BerandaController.instance.statusTidakLimas =
                                      !BerandaController
                                          .instance.statusTidakLimas;
                                  BerandaController.instance.statusYaLimas =
                                      false;
                                });
                              },
                              child: BerandaController.instance.statusTidakLimas
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
                        BerandaController.instance.statusTidakLimas
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
                          height: 193.0,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showPretestLimasFourth();
                          },
                          status: BerandaController.instance.statusYaLimas,
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
