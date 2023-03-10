import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/bagian_prisma_controller.dart';

class BagianPrismaView extends StatefulWidget {
  const BagianPrismaView({Key? key}) : super(key: key);

  Widget build(context, BagianPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BagianPrisma"),
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
  State<BagianPrismaView> createState() => BagianPrismaController();
}