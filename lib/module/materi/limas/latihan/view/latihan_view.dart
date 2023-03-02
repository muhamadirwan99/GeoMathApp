import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/latihan_controller.dart';

class LatihanView extends StatefulWidget {
  const LatihanView({Key? key}) : super(key: key);

  Widget build(context, LatihanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan"),
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
  State<LatihanView> createState() => LatihanController();
}