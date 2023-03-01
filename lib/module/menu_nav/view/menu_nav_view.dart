import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class MenuNavView extends StatefulWidget {
  const MenuNavView({Key? key}) : super(key: key);

  Widget build(context, MenuNavController controller) {
    controller.view = this;

    return Scaffold(
      body: IndexedStack(
        index: controller.currentIndex,
        children: controller.screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0xffCECECE),
                spreadRadius: 2,
                blurRadius: 12,
                offset: Offset(2, 2)),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex,
          onTap: (index) {
            controller.currentIndex = index;
            controller.update();
          },
          selectedLabelStyle: semiBold10.copyWith(color: primaryPurple),
          unselectedLabelStyle: reguler10.copyWith(color: neutral200),
          selectedItemColor: blue500,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/home_inactive.svg",
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/home_active.svg",
                ),
              ),
              label: "Beranda",
              backgroundColor: neutral400,
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/document_inactive.svg",
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/document_active.svg",
                ),
              ),
              label: 'Evaluasi',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/info.svg",
                  color: neutral200,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/info.svg",
                  color: primaryPurple,
                ),
              ),
              label: 'Informasi',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/account_inactive.svg",
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  "assets/icon/account_active.svg",
                ),
              ),
              label: 'Profil',
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MenuNavView> createState() => MenuNavController();
}
