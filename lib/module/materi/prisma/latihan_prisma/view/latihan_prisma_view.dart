import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/latihan_prisma_controller.dart';

class LatihanPrismaView extends StatefulWidget {
  const LatihanPrismaView({Key? key}) : super(key: key);

  Widget build(context, LatihanPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LatihanPrisma"),
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
  State<LatihanPrismaView> createState() => LatihanPrismaController();
}