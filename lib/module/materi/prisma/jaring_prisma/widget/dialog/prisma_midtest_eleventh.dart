import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestPrismaEleventh() async {
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
                        style: reguler16.copyWith(color: neutral900),
                      ),
                      Center(
                        child: FancyShimmerImage(
                          imageUrl:
                              "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/Jenis%20Jaring.png?alt=media&token=3ba20bbc-201c-409d-936a-51fd923bba80",
                          height: 225,
                          width: 380,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Sehingga diperoleh Volume Prisma :",
                        style: reguler16.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const ContainerRumus(
                        value: "V = Luas Alas x tinggi",
                      ),
                      const SizedBox(
                        height: 157,
                      ),
                      ButtonDialog(
                        value: "Selanjutnya",
                        onPressed: () {
                          showMidtestPrismaTwelfth();
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
