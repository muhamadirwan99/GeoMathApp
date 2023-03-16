// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailVideoPembelajaranView extends StatefulWidget {
  VideosResult video;

  DetailVideoPembelajaranView({Key? key, required this.video})
      : super(key: key);

  @override
  State<DetailVideoPembelajaranView> createState() =>
      _DetailVideoPembelajaranViewState();
}

class _DetailVideoPembelajaranViewState
    extends State<DetailVideoPembelajaranView> {
  late YoutubePlayerController ytController;

  @override
  void initState() {
    super.initState();

    var url = widget.video.linkVideo;

    ytController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    ytController.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    ytController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool statusMateri = false;

    if (widget.video.kdVideo == "1") {
      statusMateri = true;
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Video Tutorial",
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: neutral50,
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          right: 24,
          left: 24,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              statusMateri
                  ? Get.to(const LatihanLimasView())
                  : Get.to(const LatihanPrismaView());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Latihan",
                    style: semiBold16.copyWith(
                      color: neutral50,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  SvgPicture.asset(
                    "assets/icon/update/latihan.svg",
                    color: neutral50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: ytController,
        ),
        builder: (context, player) => Padding(
          padding: const EdgeInsets.only(bottom: 38),
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Container(
              color: primaryPurple,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: neutral50,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 32,
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: player,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        widget.video.title,
                        style: semiBold20.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        widget.video.desc,
                        style:
                            reguler16.copyWith(color: neutral900, height: 1.5),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Rumus",
                        style: semiBold20.copyWith(color: neutral900),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      ListView.builder(
                        itemCount: widget.video.rumus.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              ContainerRumus(value: widget.video.rumus[index]),
                              const SizedBox(
                                height: 16.0,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
