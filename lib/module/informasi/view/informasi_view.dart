import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/informasi_controller.dart';

class InformasiView extends StatefulWidget {
  const InformasiView({Key? key}) : super(key: key);

  Widget build(context, InformasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Informasi"),
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
  State<InformasiView> createState() => InformasiController();
}