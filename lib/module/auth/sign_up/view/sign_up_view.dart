import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

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
      body: controller.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
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
                    FormEmail(onChanged: (value) {
                      controller.email = value;
                    }),
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
                    FormPassword(
                      onChanged: (value) {
                        controller.password = value;
                      },
                      onTapObscure: () {
                        controller.obscure = !controller.obscure;
                        controller.update();
                      },
                      obscure: controller.obscure,
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryPurple,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8), // <-- Radius
                          ),
                        ),
                        onPressed: () {
                          controller.signUpWithEmail(
                            controller.email,
                            controller.password,
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            bottom: 12,
                          ),
                          child: Text(
                            "Daftar",
                            style: semiBold16.copyWith(
                              color: neutral50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sudah punya akun?",
                          style: semiBold16,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () => Get.to(
                            const SignInView(),
                          ),
                          child: Text(
                            "Masuk",
                            style: semiBold16.copyWith(color: primaryPurple),
                          ),
                        ),
                      ],
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
