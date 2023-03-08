import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import 'package:skeletons/skeletons.dart';

class DaftarLimasView extends StatefulWidget {
  const DaftarLimasView({Key? key}) : super(key: key);

  Widget build(context, DaftarLimasController controller) {
    controller.view = this;

    return StreamBuilder(
      stream: controller.limas,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 23),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SkeletonLine(
                    style: SkeletonLineStyle(
                        height: 116,
                        width: MediaQuery.of(context).size.width,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              );
            },
          );
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
              onTap: () {
                Get.to(
                  DetailVideoPembelajaranView(video: video),
                );
              },
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
  State<DaftarLimasView> createState() => DaftarLimasController();
}
