import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/daftar_limas_controller.dart';

class DaftarLimasView extends StatefulWidget {
  const DaftarLimasView({Key? key}) : super(key: key);

  Widget build(context, DaftarLimasController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DaftarLimas"),
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
  State<DaftarLimasView> createState() => DaftarLimasController();
}