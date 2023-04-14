import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

Future showPretestLimasFifth() async {
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
                          "Jaring - Jaring Limas Segitiga",
                          style: semiBold16.copyWith(
                            color: neutral900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-5.png?alt=media&token=3822f3f9-e8a2-4e2f-8f8a-2123d7fce3cd",
                            height: 85.18,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Jaring - Jaring Limas Segiempat",
                          style: semiBold16.copyWith(
                            color: neutral900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-6.png?alt=media&token=ed51087a-3202-4f5d-8bf0-bbf09795dc5d",
                            height: 182.64,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(
                          "Jaring - Jaring Limas Segilima",
                          style: semiBold16.copyWith(
                            color: neutral900,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Center(
                          child: FancyShimmerImage(
                            imageUrl:
                                "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/pretest_limas-7.png?alt=media&token=fe43bb25-ae79-4c1a-9492-f18c3f5342bd",
                            height: 130,
                          ),
                        ),
                        const SizedBox(
                          height: 55.0,
                        ),
                        ButtonDialog(
                          value: "Selanjutnya",
                          onPressed: () {
                            showPretestLimasSixth();
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
