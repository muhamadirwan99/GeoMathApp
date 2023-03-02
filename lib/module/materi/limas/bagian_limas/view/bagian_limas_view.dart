import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class BagianLimasView extends StatefulWidget {
  const BagianLimasView({Key? key}) : super(key: key);

  Widget build(context, BagianLimasController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Materi Pembelajaran",
          style: semiBold24.copyWith(
            color: neutral100,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icon/update/left.svg",
            color: neutral50,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
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
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/materi/materi_limas.jpg"),
                Text(
                  "Bagian - bagian Limas",
                  style: semiBold20.copyWith(color: neutral900),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Gambar di atas adalah limas segiempat. Bagian-bagian dari limas adalah sebagai berikut :",
                  style: reguler16.copyWith(
                    color: neutral900,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1.",
                          style: reguler16.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Text(
                            "Sisi : ABCD = sisi alas, sisi yang lain adalah TAB, TBC, TCD, TDA.",
                            style: reguler16.copyWith(color: neutral900),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2.",
                          style: reguler16.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Text(
                            "Rusuk : TA, TB, TC dan TD adalah rusuk tegak. Rusuk yang lain AB, BC, CD dan AD.",
                            style: reguler16.copyWith(color: neutral900),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3.",
                          style: reguler16.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Text(
                            "Titik sudut : T, A, B, C dan D merupakan titik sudut dan T dinamakan titik puncak limas.",
                            style: reguler16.copyWith(color: neutral900),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.",
                          style: reguler16.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Text(
                            "Tinggi limas : Garis yang ditarik dari T tegak lurus bidang alas disebut tinggi limas. Pada gambar tinggi limas adalah TO.",
                            style: reguler16.copyWith(color: neutral900),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "5.",
                          style: reguler16.copyWith(color: neutral900),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Text(
                            "Bidang Diagonal : TAC dan TBD adalah bidang diagonal.",
                            style: reguler16.copyWith(color: neutral900),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Video Tutorial 🤝",
                      style: semiBold20.copyWith(
                        color: neutral900,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Lainnya",
                        style: semiBold20.copyWith(
                          color: primaryPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<BagianLimasView> createState() => BagianLimasController();
}
