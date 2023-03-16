// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:skeletons/skeletons.dart';

class VideoTutorialLimas extends StatefulWidget {
  const VideoTutorialLimas({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoTutorialLimas> createState() => _VideoTutorialLimasState();
}

class _VideoTutorialLimasState extends State<VideoTutorialLimas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Video Tutorial 🤝",
                style: semiBold20.copyWith(
                  color: neutral900,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(const VideoPembelajaranView());
                },
                child: Text(
                  "Lainnya",
                  style: semiBold20.copyWith(
                    color: primaryPurple,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("videos")
              .where("kd_video", isEqualTo: "1")
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        SkeletonLine(
                          style: SkeletonLineStyle(
                            width: 180,
                            height: 174,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                      ],
                    );
                  },
                ),
              );
            }
            final data = snapshot.data.docs.map((doc) => doc.data()).toList();

            return SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemBuilder: (context, index) {
                  VideosResult video = VideosResult.fromJson(data[index]);

                  return SizedBox(
                    width: 180,
                    child: InkWell(
                      onTap: () {
                        Get.to(DetailVideoPembelajaranView(video: video));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: neutral100, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: FancyShimmerImage(
                                imageUrl: video.thumbnail,
                                boxFit: BoxFit.fitWidth,
                                height: 90,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    video.title,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        semiBold10.copyWith(color: neutral900),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    video.desc,
                                    style:
                                        reguler10.copyWith(color: neutral900),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
