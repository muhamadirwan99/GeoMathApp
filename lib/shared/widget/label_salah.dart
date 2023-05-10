// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';

class LabelSalah extends StatefulWidget {
  const LabelSalah({
    Key? key,
  }) : super(key: key);

  @override
  State<LabelSalah> createState() => _LabelSalahState();
}

class _LabelSalahState extends State<LabelSalah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(
          width: 1.0,
          color: danger100,
        ),
        color: danger50,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.error,
            size: 16,
            color: danger500,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              "Jawaban Ananda kurang tepat. Silakan coba lagi.",
              style: reguler14.copyWith(
                color: neutral1000,
              ),
            ),
          )
        ],
      ),
    );
  }
}
