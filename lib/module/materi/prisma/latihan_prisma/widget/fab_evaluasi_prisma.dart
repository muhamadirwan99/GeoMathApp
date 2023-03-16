// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';
import 'package:google_fonts/google_fonts.dart';

class FabEvaluasiPrisma extends StatefulWidget {
  const FabEvaluasiPrisma({
    Key? key,
  }) : super(key: key);

  @override
  State<FabEvaluasiPrisma> createState() => _FabEvaluasiPrismaState();
}

class _FabEvaluasiPrismaState extends State<FabEvaluasiPrisma> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: neutral50,
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        right: 24,
        left: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 38,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: neutral50,
                side: const BorderSide(width: 2, color: primaryPurple),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // <-- Radius
                ),
              ),
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  barrierColor: Colors.black54,
                  barrierDismissible: true,
                  barrierLabel: 'Daftar',
                  pageBuilder: (_, __, ___) {
                    return Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 84),
                        child: Container(
                          height: 160.0,
                          decoration: const BoxDecoration(
                            color: neutral50,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextDaftarIsi(
                                  value: "Bagian - Bagian Limas",
                                  onTap: () {
                                    Get.to(
                                      const BagianLimasView(),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                TextDaftarIsi(
                                  value: "Jaring - Jaring Limas",
                                  onTap: () {
                                    Get.to(
                                      const JaringLimasView(),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                TextDaftarIsi(
                                  value: "Rumus Limas",
                                  onTap: () {
                                    Get.to(
                                      const RumusLimasView(),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                TextDaftarIsi(
                                  value: "Latihan Soal",
                                  onTap: () {
                                    Get.to(
                                      const LatihanLimasView(),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
                // showDialogDetail(context);
              },
              child: SvgPicture.asset(
                "assets/icon/daftar_isi.svg",
                color: primaryPurple,
              ),
            ),
          ),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Get.to(
                  MainEvaluasiView(kdMateri: 0),
                );
              },
              child: Row(
                children: [
                  Text(
                    "Evaluasi",
                    style: GoogleFonts.lato().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  SvgPicture.asset(
                    "assets/icon/write.svg",
                    color: neutral50,
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
