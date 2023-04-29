// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class SoalEvaluasiUmumView extends StatefulWidget {
  int kdMateri;
  SoalEvaluasiUmumView({
    Key? key,
    required this.kdMateri,
  }) : super(key: key);

  Widget build(context, SoalEvaluasiUmumController controller) {
    controller.view = this;

    return FutureBuilder(
      future: controller.questions,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data;
            return Scaffold(
              backgroundColor: neutral50,
              appBar: AppBar(
                title: const Text("Kembali"),
                leading: IconButton(
                  icon: SvgPicture.asset(
                    "assets/icon/update/left.svg",
                    color: neutral50,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                elevation: 0,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                    ),
                    child: CircleAvatar(
                      backgroundColor: blue600,
                      child: Text(
                        "${controller.index + 1}",
                        style: semiBold20.copyWith(color: neutral100),
                      ),
                    ),
                  ),
                ],
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: Container(
                color: neutral50,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                child: SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      controller.nextQuestion(
                        extractedData.length,
                        kdMateri,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Selanjutnya",
                          style: GoogleFonts.lato().copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SvgPicture.asset(
                          "assets/icon/arrow_right.svg",
                          color: neutral50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Container(
                  color: primaryPurple,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      color: neutral50,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          extractedData[controller.index]["image"] != null
                              ? FancyShimmerImage(
                                  imageUrl: extractedData[controller.index]
                                      ["image"],
                                  boxFit: BoxFit.fitHeight,
                                  height: 250,
                                  width: MediaQuery.of(context).size.width,
                                )
                              : Container(),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            extractedData[controller.index]["title"],
                            style: reguler16.copyWith(
                              color: neutral850,
                              height: 1.5,
                            ),
                          ),
                          extractedData[controller.index]["title_second"] !=
                                  null
                              ? Column(
                                  children: [
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                    Text(
                                      extractedData[controller.index]
                                          ["title_second"],
                                      style: reguler16.copyWith(
                                        color: neutral850,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          extractedData[controller.index]["title_third"] != null
                              ? Column(
                                  children: [
                                    const SizedBox(
                                      height: 16.0,
                                    ),
                                    Text(
                                      extractedData[controller.index]
                                          ["title_third"],
                                      style: reguler16.copyWith(
                                        color: neutral850,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          const SizedBox(
                            height: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        } else {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(),
                ],
              ),
            ),
          );
        }

        return const Center(
          child: Text('No Data'),
        );
      },
    );
  }

  @override
  State<SoalEvaluasiUmumView> createState() => SoalEvaluasiUmumController();
}
