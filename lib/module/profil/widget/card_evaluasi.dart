// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:geomath_app/common/style.dart';
import 'package:geomath_app/module/profil/controller/profil_controller.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class CardEvaluasi extends StatefulWidget {
  dynamic data;
  CardEvaluasi({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<CardEvaluasi> createState() => _CardEvaluasiState();
}

class _CardEvaluasiState extends State<CardEvaluasi> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id_ID', null);

    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: neutral100, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            child: Image.asset(
              ProfilController.instance.image,
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.data["kdMateri"] == "0"
                          ? "Materi Prisma"
                          : "Materi Limas",
                      style: semiBold16.copyWith(color: neutral900),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Text(
                      "${(widget.data["akurasi"] * 100).round()}%",
                      style: semiBold16.copyWith(
                        color: primaryPurple,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17.0,
                ),
                Text(
                  DateFormat("d MMMM yyyy", "id_ID")
                      .format(widget.data["date"].toDate())
                      .toString(),
                  style: reguler10.copyWith(color: neutral900),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
