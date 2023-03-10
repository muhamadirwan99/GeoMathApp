import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  Widget build(context, ProfilController controller) {
    controller.view = this;
    controller.getDataUser();

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
                Get.back();
              },
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icon/update/triple_dot.svg",
                  color: neutral50,
                ),
                onPressed: () {},
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
            flexibleSpace: ContentAppBar(controller: controller),
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
                          const CardStatus(),
                          const SizedBox(
                            height: 24.0,
                          ),
                          CardDataDiri(controller: controller),
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
                          const CardEvaluasi(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<ProfilView> createState() => ProfilController();
}
