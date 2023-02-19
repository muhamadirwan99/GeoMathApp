// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/core.dart';

class DialogKonfirmasi extends StatefulWidget {
  final String txtHeader;
  final String txt1;
  final String txtBold;
  final String txtButtonOutline;
  final String txtButtonFilled;
  final Function() onPressedOutline;
  final Function() onPressedFilled;

  const DialogKonfirmasi({
    Key? key,
    required this.txtHeader,
    required this.txt1,
    required this.txtBold,
    required this.txtButtonOutline,
    required this.txtButtonFilled,
    required this.onPressedOutline,
    required this.onPressedFilled,
  }) : super(key: key);

  @override
  State<DialogKonfirmasi> createState() => _DialogKonfirmasiState();
}

class _DialogKonfirmasiState extends State<DialogKonfirmasi> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 220),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.txtHeader,
                style: semiBold20.copyWith(
                  color: primaryPurple,
                ),
              ),
              const Spacer(),
              RichText(
                text: TextSpan(
                  text: widget.txt1,
                  style: reguler14.copyWith(
                    color: blue850,
                    height: 1.25,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.txtBold,
                      style: semiBold14.copyWith(
                        color: blue850,
                        height: 1.25,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ButtonOutline(
                        text: widget.txtButtonOutline,
                        onPressed: widget.onPressedOutline,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ButtonFilled(
                        text: widget.txtButtonFilled,
                        onPressed: widget.onPressedFilled,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
