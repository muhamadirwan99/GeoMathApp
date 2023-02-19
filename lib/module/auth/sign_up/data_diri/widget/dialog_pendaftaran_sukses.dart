// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class DialogPendaftaranSukses extends StatefulWidget {
  const DialogPendaftaranSukses({
    Key? key,
  }) : super(key: key);

  @override
  State<DialogPendaftaranSukses> createState() =>
      _DialogPendaftaranSuksesState();
}

class _DialogPendaftaranSuksesState extends State<DialogPendaftaranSukses> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 400),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pendaftaran Akun",
                style: semiBold20.copyWith(
                  color: primaryPurple,
                ),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/illustration/akun_berhasil.svg",
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                "Pendaftaran Akun Berhasil!",
                style: semiBold20.copyWith(color: neutral950),
                textAlign: TextAlign.center,
              ),
              Text(
                "Silakan untuk langsung masuk menggunakan akun yang sudah didaftarkan",
                style: reguler14.copyWith(color: neutral950),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child: ButtonFilled(
                  text: "Masuk",
                  onPressed: () {
                    Get.offAll(
                      const SignInView(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
