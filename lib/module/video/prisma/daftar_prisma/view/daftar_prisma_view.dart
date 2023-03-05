import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/daftar_prisma_controller.dart';

class DaftarPrismaView extends StatefulWidget {
  const DaftarPrismaView({Key? key}) : super(key: key);

  Widget build(context, DaftarPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DaftarPrisma"),
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
  State<DaftarPrismaView> createState() => DaftarPrismaController();
}