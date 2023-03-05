import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class DaftarPrismaView extends StatefulWidget {
  const DaftarPrismaView({Key? key}) : super(key: key);

  Widget build(context, DaftarPrismaController controller) {
    controller.view = this;

    return ListView.builder(
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
    );
  }

  @override
  State<DaftarPrismaView> createState() => DaftarPrismaController();
}
