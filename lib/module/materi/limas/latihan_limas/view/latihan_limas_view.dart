import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/latihan_limas_controller.dart';

class LatihanLimasView extends StatefulWidget {
  const LatihanLimasView({Key? key}) : super(key: key);

  Widget build(context, LatihanLimasController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LatihanLimas"),
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
  State<LatihanLimasView> createState() => LatihanLimasController();
}