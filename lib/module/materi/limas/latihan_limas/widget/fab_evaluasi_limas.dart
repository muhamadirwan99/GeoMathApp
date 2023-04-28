// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class FabEvaluasiLimas extends StatefulWidget {
  const FabEvaluasiLimas({
    Key? key,
  }) : super(key: key);

  @override
  State<FabEvaluasiLimas> createState() => _FabEvaluasiLimasState();
}

class _FabEvaluasiLimasState extends State<FabEvaluasiLimas> {
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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                Get.to(
                  MainEvaluasiView(kdMateri: 1),
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
