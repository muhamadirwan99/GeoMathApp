import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaTwelfth() async {
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
                        "Rumus Volume Prisma Segitiga",
                        style: semiBold20.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const ContainerRumus(
                          value: "V = (½ x a x t) x tinggi prisma"),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Rumus Volume Prisma Segiempat",
                        style: semiBold20.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const ContainerRumus(
                          value: "LP = luas alas x tinggi prisma"),
                      const SizedBox(
                        height: 350,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          Get.to(const RumusPrismaView());
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
