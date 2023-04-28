// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class FabMateriLimas extends StatefulWidget {
  final Function() onPressedSelanjutnya;

  const FabMateriLimas({
    Key? key,
    required this.onPressedSelanjutnya,
  }) : super(key: key);

  @override
  State<FabMateriLimas> createState() => _FabMateriLimasState();
}

class _FabMateriLimasState extends State<FabMateriLimas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -1),
          ),
        ],
        color: neutral50,
      ),
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
            height: 38,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: widget.onPressedSelanjutnya,
              child: Row(
                children: [
                  Text(
                    "Selanjutnya",
                    style: GoogleFonts.lato().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  SvgPicture.asset(
                    "assets/icon/arrow_right.svg",
                    color: neutral50,
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
