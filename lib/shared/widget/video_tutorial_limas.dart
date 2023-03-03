// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

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
        ),
        const SizedBox(
          height: 16.0,
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 180,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: neutral100, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child:
                            Image.asset("assets/illustration/card_image.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Matematika Dasar : Pendahuluan Limas",
                              style: semiBold10.copyWith(color: neutral900),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Video ini menceritakan mengenai pengenalan bentuk limas dalam BAB Geometri.",
                              style: reguler10.copyWith(color: neutral900),
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
              );
            },
          ),
        ),
      ],
    );
  }
}
