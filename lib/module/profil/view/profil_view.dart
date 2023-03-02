import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  Widget build(context, ProfilController controller) {
    controller.view = this;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            expandedHeight: 140.0,
            backgroundColor: primaryPurple,
            floating: true,
            snap: false,
            pinned: true,
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
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/update/triple_dot.svg",
                  color: neutral50,
                ),
                onPressed: () {},
              ),
            ],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            title: Text(
              "Profil",
              style: semiBold24.copyWith(
                color: neutral100,
              ),
            ),
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    color: primaryPurple,
                  ),
                ),
                Positioned.fill(
                  child: SafeArea(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 55, left: 23, bottom: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/illustration/avatar.png",
                            width: 70,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Kinanti Ayu",
                                    style: semiBold24.copyWith(
                                      color: neutral50,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 2.0,
                                ),
                                Expanded(
                                  child: Text(
                                    "0001290310",
                                    style: reguler16.copyWith(
                                      color: neutral50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
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
                          vertical: 32, horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: primaryPurple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: IntrinsicHeight(
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icon/update/star.svg"),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "Poin",
                                          style: reguler16.copyWith(
                                              color: neutral50),
                                        ),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "100",
                                          style: semiBold20.copyWith(
                                              color: neutral50),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      color: blue400,
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icon/update/book.svg"),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "Pertanyaan",
                                          style: reguler16.copyWith(
                                              color: neutral50),
                                        ),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "5",
                                          style: semiBold20.copyWith(
                                              color: neutral50),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      color: blue400,
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icon/update/target.svg"),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "Akurasi",
                                          style: reguler16.copyWith(
                                              color: neutral50),
                                        ),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "100%",
                                          style: semiBold20.copyWith(
                                              color: neutral50),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 16, top: 16),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/icon/update/data_diri.svg"),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "Data Diri",
                                        style: semiBold20.copyWith(
                                            color: neutral900),
                                      ),
                                    ],
                                  ),
                                ),
                                const ContentCardDataDiri(
                                  value: "VII",
                                  icon: "assets/icon/update/class.svg",
                                ),
                                const ContentCardDataDiri(
                                  value: "085697780009",
                                  icon:
                                      "assets/icon/update/whatsapp_circle.svg",
                                ),
                                const ContentCardDataDiri(
                                  value: "ayu.kinanti@gmail.com",
                                  icon: "assets/icon/update/mail_circle.svg",
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            "Riwayat Evaluasi",
                            style: semiBold16.copyWith(color: neutral900),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: neutral100, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    "assets/illustration/thumbnail_limas.png",
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Materi Limas",
                                            style: semiBold16.copyWith(
                                                color: neutral900),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          Text(
                                            "100%",
                                            style: semiBold16.copyWith(
                                              color: primaryPurple,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17.0,
                                      ),
                                      Text(
                                        "14/12/2023",
                                        style: reguler10.copyWith(
                                            color: neutral900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: neutral100, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    "assets/illustration/thumbnail_limas.png",
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Materi Limas",
                                            style: semiBold16.copyWith(
                                                color: neutral900),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          Text(
                                            "100%",
                                            style: semiBold16.copyWith(
                                              color: primaryPurple,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17.0,
                                      ),
                                      Text(
                                        "14/12/2023",
                                        style: reguler10.copyWith(
                                            color: neutral900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: neutral100, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    "assets/illustration/thumbnail_limas.png",
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Materi Limas",
                                            style: semiBold16.copyWith(
                                                color: neutral900),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          Text(
                                            "100%",
                                            style: semiBold16.copyWith(
                                              color: primaryPurple,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17.0,
                                      ),
                                      Text(
                                        "14/12/2023",
                                        style: reguler10.copyWith(
                                            color: neutral900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              side:
                                  const BorderSide(color: neutral100, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    "assets/illustration/thumbnail_limas.png",
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Materi Limas",
                                            style: semiBold16.copyWith(
                                                color: neutral900),
                                          ),
                                          const SizedBox(
                                            width: 80,
                                          ),
                                          Text(
                                            "100%",
                                            style: semiBold16.copyWith(
                                              color: primaryPurple,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 17.0,
                                      ),
                                      Text(
                                        "14/12/2023",
                                        style: reguler10.copyWith(
                                            color: neutral900),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ProfilView> createState() => ProfilController();
}
