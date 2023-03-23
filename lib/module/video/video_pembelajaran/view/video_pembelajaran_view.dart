// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
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
            Get.to(const MenuNavView());
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
            const Expanded(
              child: TabBarView(
                children: [
                  DaftarPrismaView(),
                  DaftarLimasView(),
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
