import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaNinth() async {
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
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/image%2030.png?alt=media&token=5a3a2606-5e36-4ea9-bd00-a1fb9cf6aae8",
                          height: 144,
                          width: 221.01,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Balok memiliki",
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
                                  JaringPrismaController
                                      .instance.sisiVolumeBalok = true;
                                  JaringPrismaController.instance.update();
                                } else {
                                  JaringPrismaController
                                      .instance.sisiVolumeBalok = false;
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
                        height: 22.0,
                      ),
                      FormLeftTitle(
                        title: "Berbentuk",
                        hintText: "Isi bentuk balok",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            JaringPrismaController.instance.bentukBalok = true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.bentukBalok = false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 22.0,
                      ),
                      Text(
                        "Maka Volume Balok adalah :",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Isi Volume Balok",
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
                            JaringPrismaController.instance.volumeBalok = true;
                            JaringPrismaController.instance.update();
                          } else {
                            JaringPrismaController.instance.volumeBalok = false;
                            JaringPrismaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 234.67,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showMidtestPrismaTenth();
                        },
                        status:
                            JaringPrismaController.instance.sisiVolumeBalok &&
                                JaringPrismaController.instance.bentukBalok &&
                                JaringPrismaController.instance.volumeBalok,
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
