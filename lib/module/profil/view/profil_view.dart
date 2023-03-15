import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  Widget build(context, ProfilController controller) {
    controller.view = this;

    return StreamBuilder(
      stream: controller.user,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
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
                  leading: IconButton(
                    icon: SvgPicture.asset(
                      "assets/icon/update/left.svg",
                      color: neutral50,
                    ),
                    onPressed: () {
                      Get.to(const MenuNavView());
                    },
                  ),
                  actions: [
                    PopupMenuButton<int>(
                      onSelected: (item) => controller.handleClick(item),
                      itemBuilder: (context) => [
                        const PopupMenuItem<int>(
                            value: 0, child: Text('Keluar')),
                      ],
                    ),
                  ],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                  ),
                  title: Text(
                    "Profil",
                    style: semiBold24.copyWith(
                      color: neutral100,
                    ),
                  ),
                  flexibleSpace: ContentAppBar(data: data),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        color: primaryPurple,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: neutral50),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            color: neutral50,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 32, horizontal: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CardStatus(data: data),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                CardDataDiri(data: data),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                Text(
                                  "Riwayat Evaluasi",
                                  style: semiBold16.copyWith(color: neutral900),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                data["riwayatEvaluasi"] != null
                                    ? ListView.builder(
                                        itemCount:
                                            data["riwayatEvaluasi"].length,
                                        shrinkWrap: true,
                                        physics: const ScrollPhysics(),
                                        padding: const EdgeInsets.all(0),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return CardEvaluasi(
                                              data: data["riwayatEvaluasi"]
                                                  [index]);
                                        },
                                      )
                                    : Container(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/illustration/tidak_ada_evaluasi.svg",
                                            ),
                                            const SizedBox(
                                              height: 8.0,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Get.to(
                                                  const MainEvaluasiView(),
                                                );
                                              },
                                              child: Text(
                                                "Mulai Evaluasi?",
                                                style: semiBold16.copyWith(
                                                  color: primaryPurple,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }

        return Container();
      },
    );
  }

  @override
  State<ProfilView> createState() => ProfilController();
}
