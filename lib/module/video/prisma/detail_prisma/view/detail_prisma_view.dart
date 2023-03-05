import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/detail_prisma_controller.dart';

class DetailPrismaView extends StatefulWidget {
  const DetailPrismaView({Key? key}) : super(key: key);

  Widget build(context, DetailPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailPrisma"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailPrismaView> createState() => DetailPrismaController();
}