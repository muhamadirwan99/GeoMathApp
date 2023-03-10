import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class SoalEvaluasiView extends StatefulWidget {
  const SoalEvaluasiView({Key? key}) : super(key: key);

  Widget build(context, SoalEvaluasiController controller) {
    controller.view = this;

    return FutureBuilder(
      future: controller.questions as Future<List<Question>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              // change the background
              backgroundColor: neutral100,
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
                  vertical: 32,
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
                      controller.nextQuestion(extractedData.length);
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
                          Image.network(
                            extractedData[controller.index].image,
                          ),
                          Text(
                            extractedData[controller.index].title,
                            style: reguler16.copyWith(
                              color: neutral850,
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          for (int i = 0;
                              i <
                                  extractedData[controller.index]
                                      .options
                                      .length;
                              i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ButtonSoal(
                                text: extractedData[controller.index]
                                    .options
                                    .keys
                                    .toList()[i],
                                onPressed: () {
                                  controller.checkAnswerAndUpdate(
                                      extractedData[controller.index]
                                          .options
                                          .values
                                          .toList()[i]);
                                },
                                colorText: controller.isPressed
                                    ? extractedData[controller.index]
                                                .options
                                                .values
                                                .toList()[i] ==
                                            true
                                        ? neutral100
                                        : primaryPurple
                                    : primaryPurple,
                                bgColor: controller.isPressed
                                    ? extractedData[controller.index]
                                                .options
                                                .values
                                                .toList()[i] ==
                                            true
                                        ? primaryPurple
                                        : neutral100
                                    : neutral100,
                              ),
                            ),
                          // GestureDetector(
                          //   onTap: () => controller.checkAnswerAndUpdate(
                          //       extractedData[controller.index]
                          //           .options
                          //           .values
                          //           .toList()[i]),
                          //   child: OptionCard(
                          //     option: extractedData[controller.index]
                          //         .options
                          //         .keys
                          //         .toList()[i],
                          //     color: controller.isPressed
                          //         ? extractedData[controller.index]
                          //                     .options
                          //                     .values
                          //                     .toList()[i] ==
                          //                 true
                          //             ? correct
                          //             : incorrect
                          //         : neutral100,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 20.0),
                Text(
                  'Please Wait while Questions are loading..',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.none,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          );
        }

        return const Center(
          child: Text('No Data'),
        );
      },
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Kembali"),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   floatingActionButton: Container(
    //     color: neutral50,
    //     padding: const EdgeInsets.symmetric(
    //       vertical: 32,
    //       horizontal: 40,
    //     ),
    //     child: SizedBox(
    //       height: 48,
    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           backgroundColor: primaryPurple,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(8),
    //           ),
    //         ),
    //         onPressed: () {},
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text(
    //               "Selanjutnya",
    //               style: GoogleFonts.lato().copyWith(
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w700,
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 5.0,
    //             ),
    //             SvgPicture.asset(
    //               "assets/icon/arrow_right.svg",
    //               color: neutral50,
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       color: primaryPurple,
    //       child: Container(
    //         decoration: const BoxDecoration(
    //           borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(16),
    //             topRight: Radius.circular(16),
    //           ),
    //           color: neutral50,
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Image.network(
    //                 "https://firebasestorage.googleapis.com/v0/b/geomathapp-7b721.appspot.com/o/limas_1.jpg?alt=media&token=ed6f1ab4-42dd-4969-b1e1-bdba39126eac",
    //               ),
    //               Text(
    //                 "Sebuah limas segiempat memiliki panjang 12 cm, lebar 5 cm dan tinggi 18 cm. Volume dari limas tersebut ialah:",
    //                 style: reguler16.copyWith(
    //                   color: neutral850,
    //                 ),
    //               ),
    //               const SizedBox(
    //                 height: 24.0,
    //               ),
    //               ButtonSoal(
    //                 text: "360 cm³",
    //                 onPressed: () {},
    //               ),
    //               const SizedBox(
    //                 height: 16.0,
    //               ),
    //               ButtonSoal(
    //                 text: "220 cm³",
    //                 onPressed: () {},
    //               ),
    //               const SizedBox(
    //                 height: 16.0,
    //               ),
    //               ButtonSoal(
    //                 text: "220 cm³",
    //                 onPressed: () {},
    //               ),
    //               const SizedBox(
    //                 height: 16.0,
    //               ),
    //               ButtonSoal(
    //                 text: "220 cm³",
    //                 onPressed: () {},
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  @override
  State<SoalEvaluasiView> createState() => SoalEvaluasiController();
}
