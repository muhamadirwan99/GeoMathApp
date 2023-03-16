import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:skeletons/skeletons.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  Widget build(context, BerandaController controller) {
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
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            title: FutureBuilder<DocumentSnapshot>(
              future: controller.user,
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  Map<String, dynamic> data =
                      snapshot.data!.data() as Map<String, dynamic>;

                  String nama = data["nama"];
                  List listNama = nama.split(" ");
                  String firstName = listNama[0];
                  String lastName = listNama[1];

                  return Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Hi, $firstName $lastName 👋",
                      style: semiBold24.copyWith(
                        color: neutral100,
                      ),
                    ),
                  );
                }
                return Container();
              },
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
                              child: InkWell(
                                onTap: () {
                                  Get.to(const BagianPrismaView());
                                },
                                child: Image.asset(
                                  "assets/illustration/prisma.png",
                                ),
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
                      StreamBuilder(
                        stream: controller.videos,
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 23),
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    SkeletonLine(
                                      style: SkeletonLineStyle(
                                          height: 116,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          final data = snapshot.data.docs
                              .map((doc) => doc.data())
                              .toList();

                          return ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: const EdgeInsets.symmetric(horizontal: 23),
                            itemBuilder: (context, index) {
                              VideosResult video =
                                  VideosResult.fromJson(data[index]);

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
                      ),
                      const SizedBox(
                        height: 24.0,
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
