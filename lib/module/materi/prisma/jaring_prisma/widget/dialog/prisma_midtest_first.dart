import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaFirst() async {
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
                      RichText(
                        text: TextSpan(
                          text: "Sekarang, mari kita pelajari cara menentukan ",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "luas permukaan ",
                              style: semiBold16.copyWith(
                                color: blue900,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "bangun ruang sisi datar berdasarkan rumus matematika.",
                              style: reguler16.copyWith(
                                color: blue900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showMidtestPrismaSecond();
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
