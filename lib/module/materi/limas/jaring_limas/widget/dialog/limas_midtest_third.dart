import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showMidtestLimasThird() async {
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
                          "Maka dapat diambil kesimpulan bahwa :",
                          style: reguler16.copyWith(
                            color: blue900,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Volume Limas",
                          style: semiBold16.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const ContainerRumus(
                          value: "Volume limas= ⅓ x luas alas x tinggi",
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Luas Permukaan Limas",
                          style: semiBold16.copyWith(color: blue900),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const ContainerRumus(
                          value: "LP = luas alas + (jumlah luas sisi tegak)",
                        ),
                        const SizedBox(
                          height: 360.0,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            Get.to(const RumusLimasView());
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
