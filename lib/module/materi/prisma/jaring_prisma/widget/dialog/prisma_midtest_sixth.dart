import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaSixth() async {
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
                      Text(
                        "Rumus Luas Permukaan Prisma Segitiga",
                        style: semiBold20.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const ContainerRumus(
                          value:
                              "LP = (2 x luas alas) + (keliling alas x tinggi)"),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Rumus Luas Permukaan Prisma Segiempat",
                        style: semiBold20.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const ContainerRumus(
                          value: "LP = (2 x luas alas) + Luas Selimut"),
                      const SizedBox(
                        height: 302,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showMidtestPrismaSeventh();
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
