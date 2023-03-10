import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/jaring_prisma_controller.dart';

class JaringPrismaView extends StatefulWidget {
  const JaringPrismaView({Key? key}) : super(key: key);

  Widget build(context, JaringPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("JaringPrisma"),
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
  State<JaringPrismaView> createState() => JaringPrismaController();
}