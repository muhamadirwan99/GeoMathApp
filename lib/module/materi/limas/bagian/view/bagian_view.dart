import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/bagian_controller.dart';

class BagianView extends StatefulWidget {
  const BagianView({Key? key}) : super(key: key);

  Widget build(context, BagianController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bagian"),
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
  State<BagianView> createState() => BagianController();
}