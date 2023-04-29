import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showDialogSelesai() async {
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: primaryPurple,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              24,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: neutral100,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 16,
                                  ),
                                  child: Text(
                                    "Evaluasi Selesai",
                                    style: reguler12.copyWith(
                                        color: primaryPurple),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 32.0,
                              ),
                              SvgPicture.asset(
                                  "assets/illustration/selesai_evaluasi.svg"),
                              const SizedBox(
                                height: 32.0,
                              ),
                              Text(
                                "Selamat",
                                style: semiBold32.copyWith(color: neutral50),
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                "Kamu sudah menyelesaikan Evaluasi",
                                textAlign: TextAlign.center,
                                style: reguler24.copyWith(color: neutral50),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Segera kumpulkan jawaban Evaluasi Ananda.",
                        style: semiBold16.copyWith(
                          color: neutral1000,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 35.12,
                      ),
                      ButtonDialog(
                        value: "Ya,  saya mengerti",
                        onPressed: () {
                          Get.offAll(const MenuNavView());
                        },
                        status: true,
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
