import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPembelajaranView extends StatefulWidget {
  const VideoPembelajaranView({Key? key}) : super(key: key);

  Widget build(context, VideoPembelajaranController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Video Pembelajaran",
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
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: neutral150,
                  borderRadius: BorderRadius.circular(
                    44,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        44,
                      ),
                      color: neutral50,
                    ),
                    labelColor: primaryPurple,
                    unselectedLabelColor: neutral700,
                    labelStyle: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    unselectedLabelStyle: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    tabs: const [
                      Tab(
                        text: 'Prisma',
                      ),
                      Tab(
                        text: 'Limas',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: 3,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return CardVideo(
                        onTap: () {
                          Get.to(const DetailPrismaView());
                        },
                        imgUrl: "https://i.ibb.co/sym6ybs/Limas1.png",
                        title: "Matematika Dasar : Pendahuluan Limas",
                        desc:
                            "Video ini menceritakan mengenai pengenalan bentuk limas dalam BAB Geometri.",
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 3,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return CardVideo(
                        onTap: () {
                          Get.to(const DetailLimasView());
                        },
                        imgUrl: "https://i.ibb.co/sym6ybs/Limas1.png",
                        title: "Matematika Dasar : Pendahuluan Limas",
                        desc:
                            "Video ini menceritakan mengenai pengenalan bentuk limas dalam BAB Geometri.",
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<VideoPembelajaranView> createState() => VideoPembelajaranController();
}
