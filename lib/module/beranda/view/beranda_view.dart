import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  Widget build(context, BerandaController controller) {
    controller.view = this;
    controller.getDataUser();

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
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Hi, ${controller.nama} 👋",
                style: semiBold24.copyWith(
                  color: neutral100,
                ),
              ),
            ),
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    child: Image.asset(
                      "assets/illustration/background_beranda.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 55, left: 23),
                      child: Text(
                        "Ayo mulai belajar",
                        style: reguler16.copyWith(
                          color: neutral100,
                        ),
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
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Text(
                          "Materi Pembelajaran 📖",
                          style: semiBold16.copyWith(
                            color: neutral900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/illustration/prisma.png",
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Get.to(const BagianLimasView());
                                },
                                child: Image.asset(
                                  "assets/illustration/limas.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Video Pembelajaran 🔥",
                              style: semiBold16.copyWith(
                                color: neutral900,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(const VideoPembelajaranView());
                              },
                              child: Text(
                                "Lainnya",
                                style: semiBold14.copyWith(
                                  color: primaryPurple,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        itemBuilder: (BuildContext context, int index) {
                          return CardVideo(
                            onTap: () {},
                            imgUrl: "https://i.ibb.co/sym6ybs/Limas1.png",
                            title: "Matematika Dasar : Pendahuluan Limas",
                            desc:
                                "Video ini menceritakan mengenai pengenalan bentuk limas dalam BAB Geometri.",
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<BerandaView> createState() => BerandaController();
}
