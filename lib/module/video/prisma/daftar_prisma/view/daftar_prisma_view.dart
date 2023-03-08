import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class DaftarPrismaView extends StatefulWidget {
  const DaftarPrismaView({Key? key}) : super(key: key);

  Widget build(context, DaftarPrismaController controller) {
    controller.view = this;

    return StreamBuilder(
      stream: controller.prisma,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return const Text('Please Wait');
        }
        final data = snapshot.data.docs.map((doc) => doc.data()).toList();
        return ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          itemBuilder: (context, index) {
            VideosResult video = VideosResult.fromJson(data[index]);

            return CardVideo(
              onTap: () {},
              imgUrl: video.thumbnail,
              title: video.title,
              desc: video.desc,
            );
          },
        );
      },
    );
  }

  @override
  State<DaftarPrismaView> createState() => DaftarPrismaController();
}
