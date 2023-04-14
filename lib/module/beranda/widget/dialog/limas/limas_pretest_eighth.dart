import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestLimasEighth() async {
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
                          "Jika keempat diagonal ruang kubus digambarkan, maka akan berpotongan di satu titik seperti gambar dibawah ini. Sehingga terbentuk 6 buah Limas Segiempat beraturan dengan tinggi limas (T Limas). Yaitu T.ABCD, T.BCGF, T.ADHE, T.EFGH, T.ABFE, dan T.CDHG.",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-8.png?alt=media&token=4ccd2237-27ec-4be3-8b2d-569c764a2a82",
                            height: 242,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Sehingga diperoleh Volume Limas :",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const ContainerRumus(
                            value: "Volume: ⅓ x alas x tinggi"),
                        const SizedBox(
                          height: 68.0,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showPretestLimasNinth();
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
