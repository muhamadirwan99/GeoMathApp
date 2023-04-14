import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestLimasFirst() async {
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
                      Text(
                        "Sekarang, Ananda amati secara teliti bagaimana jika sebuah kubus dibagi menjadi beberapa bagian sebagaimana ilustrasi berikut.",
                        style: reguler16.copyWith(color: blue900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Center(
                        child: FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-1.png?alt=media&token=496a25e1-c06c-449a-8bdd-9dbf77605856",
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showPretestLimasSecond();
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
