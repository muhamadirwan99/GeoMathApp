import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class DataAkunView extends StatefulWidget {
  const DataAkunView({Key? key}) : super(key: key);

  Widget build(context, DataAkunController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/update/left.svg',
            color: neutral900,
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
                height: 24.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/icon/update/step_1.svg"),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Text(
                            "Data Akun",
                            style: semiBold16.copyWith(
                              color: primaryPurple,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const SizedBox(
                            width: 40,
                            child: Divider(
                              thickness: 2,
                              color: neutral200,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Melengkapi data akun",
                        style: semiBold12.copyWith(
                          color: neutral850,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  SvgPicture.asset("assets/icon/update/step_2_inactive.svg"),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Data Diri",
                          style: reguler16.copyWith(
                            color: neutral600,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Melengkapi data diri",
                          style: reguler12.copyWith(
                            color: neutral600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                  controller.emptyEmail = controller.checkEmptyField(value);
                  controller.email = value;
                },
                statusForm: controller.emptyEmail,
                initialValue: controller.email,
              ),
              controller.emptyEmail
                  ? Container()
                  : Text(
                      "Email tidak boleh kosong",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              const SizedBox(
                height: 18.0,
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
                  controller.checkPassword(value);
                  controller.emptyPassword = controller.checkEmptyField(value);
                  controller.password = value;
                },
                onTapObscure: () {
                  controller.obscurePassword = !controller.obscurePassword;
                  controller.update();
                },
                obscure: controller.obscurePassword,
                statusForm: controller.emptyPassword,
                statusPassword: controller.statusPassword,
                initialValue: controller.password,
              ),
              controller.statusPassword
                  ? Container()
                  : Text(
                      "Kata sandi tidak sesuai dengan ketentuan",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              controller.emptyPassword
                  ? Container()
                  : Text(
                      "Kata sandi tidak boleh kosong",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                "Konfirmasi Kata Sandi",
                style: semiBold16.copyWith(color: primaryPurple),
              ),
              const SizedBox(
                height: 8.0,
              ),
              FormPassword(
                onChanged: (value) {
                  controller.checkConfirmPassword(value);
                  controller.emptyConfirmPassword =
                      controller.checkEmptyField(value);
                  controller.confirmPassword = value;
                },
                onTapObscure: () {
                  controller.obscureConfirmPassword =
                      !controller.obscureConfirmPassword;
                  controller.update();
                },
                obscure: controller.obscureConfirmPassword,
                statusForm: controller.emptyConfirmPassword,
                statusPassword: controller.statusConfirmPassword,
                initialValue: controller.confirmPassword,
              ),
              controller.statusConfirmPassword
                  ? Container()
                  : Text(
                      "Kata sandi tidak cocok",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              controller.emptyPassword
                  ? Container()
                  : Text(
                      "Konfirmasi kata sandi tidak boleh kosong",
                      style: reguler14.copyWith(
                        color: danger500,
                      ),
                    ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    controller.emptyEmail =
                        controller.checkEmptyField(controller.email!);
                    controller.emptyPassword =
                        controller.checkEmptyField(controller.password!);
                    controller.emptyConfirmPassword =
                        controller.checkEmptyField(controller.confirmPassword!);
                    controller.update();

                    UserDatabase.save(
                      controller.email,
                      controller.password,
                      "",
                      "",
                      "",
                    );

                    controller.onSubmit();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    child: Text(
                      "Selanjutnya",
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
  State<DataAkunView> createState() => DataAkunController();
}
