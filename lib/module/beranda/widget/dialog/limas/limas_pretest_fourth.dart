import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestLimasFourth() async {
  await showModalBottomSheet(
    context: globalContext,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
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
                          "Bagian-bagian Limas diantaranya ada titik puncak, titik sudut, rusuk, sisi tegak dan sisi alas. Secara rinci, bagian limas ditunjukan pada gambar berikut: ",
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
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-4.png?alt=media&token=174ee587-3049-4a61-8de8-f03c0b705223",
                            height: 141,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Limas merupakan bangun ruang sisi datar yang memiliki sebuah alas berbentuk segi-n dan seluruh sisi tegaknya berbentuk segitiga.",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "Jumlah sisi dan jumlah titik sudut yang terdapat pada limas adalah sebanyak n+1.",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "Sedangkan jumlah rusuknya adalah sebanyak 2n.",
                          style: reguler16.copyWith(
                            color: blue900,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 137.0,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showPretestLimasFifth();
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
    },
  );
}
