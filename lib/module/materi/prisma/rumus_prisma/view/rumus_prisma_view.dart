import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/rumus_prisma_controller.dart';

class RumusPrismaView extends StatefulWidget {
  const RumusPrismaView({Key? key}) : super(key: key);

  Widget build(context, RumusPrismaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RumusPrisma"),
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
  State<RumusPrismaView> createState() => RumusPrismaController();
}