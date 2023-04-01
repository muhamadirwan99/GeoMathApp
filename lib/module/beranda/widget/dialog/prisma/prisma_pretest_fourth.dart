import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestPrismaFourth() async {
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
                          "Prisma terdiri atas beberapa bagian diantaranya, titik sudut, rusuk, sisi atas, sisi tegak dan sisi alas.",
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
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_prisma-6.png?alt=media&token=bf57b880-3b96-495b-99b8-ba5b81988c33",
                            height: 187,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Prisma merupakan bangun ruang tiga dimensi yang dibatasi oleh sisi alas dan sisi tutup yang memiliki bentuk segi-n.",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "Sementara itu, seluruh sisi-sisi tegak yang terdapat dalam prisma berbentuk persegi panjang. ",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "Sebuah prisma berbentuk segi-n selanjutnya akan memiliki jumlah sisi sebanyak n+2, jumlah rusuk sebanyak 3n dan jumlah titik sudut sebanyak 2n.",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showPretestPrismaFifth();
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
