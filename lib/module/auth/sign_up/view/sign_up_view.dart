import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:geomath_app/state_util.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  Widget build(context, SignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/arrow_left.svg',
          ),
          onPressed: () {
            Get.to(const SignInView());
          },
        ),
        title: Text(
          "Daftar",
          style: semiBold20.copyWith(
            color: neutral900,
          ),
        ),
        backgroundColor: neutral50,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32.0,
              ),
              Text(
                "Daftar",
                style: semiBold32.copyWith(color: neutral900),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Text(
                "Email",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 10,
                    ),
                    child: SvgPicture.asset(
                      'assets/icon/account_inactive.svg',
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: neutral500, width: 2),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryPurple, width: 2),
                  ),
                  hintText: "Masukkan email anda disini",
                  hintStyle: semiBold14.copyWith(
                    color: neutral500,
                  ),
                  focusColor: neutral500,
                  fillColor: neutral500,
                  hoverColor: neutral500,
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                "Password",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: SvgPicture.asset(
                      'assets/icon/lock.svg',
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: SvgPicture.asset(
                      'assets/icon/eye.svg',
                    ),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: neutral500, width: 2),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: primaryPurple, width: 2),
                  ),
                  hintText: "Masukkan kata sandi anda disini",
                  hintStyle: semiBold14.copyWith(
                    color: neutral500,
                  ),
                  focusColor: neutral500,
                  fillColor: neutral500,
                  hoverColor: neutral500,
                ),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SignUpView> createState() => SignUpController();
}
