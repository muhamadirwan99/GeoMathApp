import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaSixth() async {
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
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            "Prisma di atas memiliki...",
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
                                  BerandaController.instance.statusJumlahSisi =
                                      true;
                                  BerandaController.instance.update();
                                } else {
                                  BerandaController.instance.statusJumlahSisi =
                                      false;
                                  BerandaController.instance.update();
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
                        style: reguler16.copyWith(
                          color: blue900,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitle(
                        title: "Sisi Alas      :",
                        hintText: "Isi Luas Sisi Alas",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusLuasSisiAlas =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusLuasSisiAlas =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitle(
                        title: "Sisi Tegak   :",
                        hintText: "Isi Luas Sisi Tegak",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusLuasSisiTegak =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusLuasSisiTegak =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormLeftTitle(
                        title: "Sisi Atas      :",
                        hintText: "Isi Luas Sisi Atas",
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            BerandaController.instance.statusLuasSisiAtas =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusLuasSisiAtas =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Maka Luas Permukaan Prisma adalah =",
                        style: reguler16.copyWith(
                          color: blue900,
                        ),
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
                            BerandaController.instance.statusLuasPermukaan =
                                true;
                            BerandaController.instance.update();
                          } else {
                            BerandaController.instance.statusLuasPermukaan =
                                false;
                            BerandaController.instance.update();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestPrismaSeventh();
                        },
                        status: BerandaController.instance.statusJumlahSisi &&
                            BerandaController.instance.statusLuasSisiAlas &&
                            BerandaController.instance.statusLuasSisiTegak &&
                            BerandaController.instance.statusLuasSisiAtas &&
                            BerandaController.instance.statusLuasPermukaan,
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
