import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  Widget build(context, SignInController controller) {
    controller.view = this;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: controller.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/logo/logo_geomathapp.svg',
                        ),
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      Text(
                        'Masuk',
                        style: semiBold24,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Hallo, senang bisa melihatmu kembali',
                        style: reguler14,
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
                      FormBase(
                        hintText: "Masukkan email anda disini",
                        icon: "assets/icon/update/mail.svg",
                        onChanged: (value) {
                          controller.emptyEmail =
                              controller.checkEmptyField(controller.email);
                          controller.update();
                          controller.email = value;
                        },
                        statusForm: controller.emptyEmail,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        "Kata Sandi",
                        style: semiBold16.copyWith(color: primaryPurple),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      FormPassword(
                        onChanged: (value) {
                          controller.emptyPassword =
                              controller.checkEmptyField(controller.password);
                          controller.update();
                          controller.password = value;
                        },
                        onTapObscure: () {
                          controller.obscure = !controller.obscure;
                          controller.update();
                        },
                        obscure: controller.obscure,
                        statusPassword: controller.emptyPassword,
                        statusForm: controller.emptyPassword,
                      ),
                      // const SizedBox(
                      //   height: 16.0,
                      // ),
                      // Container(
                      //   alignment: Alignment.centerRight,
                      //   child: Text(
                      //     "Lupa Kata Sandi",
                      //     style: semiBold16.copyWith(color: primaryPurple),
                      //   ),
                      // ),
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
                            controller.emptyEmail =
                                controller.checkEmptyField(controller.email);
                            controller.emptyPassword =
                                controller.checkEmptyField(controller.password);
                            controller.update();
                            controller.onSubmit();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 12,
                            ),
                            child: Text(
                              "Masuk",
                              style: semiBold16.copyWith(
                                color: neutral50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Belum punya akun?",
                            style: semiBold16,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          InkWell(
                            onTap: () {
                              UserDatabase.save("", "", "", "", "");
                              Get.to(const DataAkunView());
                            },
                            child: Text(
                              "Daftar Disini",
                              style: semiBold16.copyWith(
                                color: primaryPurple,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              thickness: 2,
                              color: Color(0xff848383),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "atau Masuk melalui",
                            style: reguler16.copyWith(
                              color: const Color(0xff848383),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Expanded(
                            child: Divider(
                              thickness: 2,
                              color: Color(0xff848383),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 32.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            controller.signInWithGoogle();
                          },
                          child: Column(
                            children: [
                              SvgPicture.asset("assets/logo/logo_google.svg"),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "Google",
                                style: reguler14,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  @override
  State<SignInView> createState() => SignInController();
}
