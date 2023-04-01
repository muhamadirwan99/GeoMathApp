import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaSeventh() async {
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
                          "Selain Prisma segitiga, terdapat juga prisma yang lain seperti prisma dibawah ini :",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-8.png?alt=media&token=28f3b6f4-083a-4ddd-9d85-70068c26d4cf",
                            height: 225,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Sehingga diperoleh Luas Permukaan Limas :",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const ContainerRumus(
                            value:
                                "LP = (2 x Luas Alas) + (Keliling Alas x tinggi)"),
                        const SizedBox(
                          height: 157,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showPretestPrismaEighth();
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
      });
}
