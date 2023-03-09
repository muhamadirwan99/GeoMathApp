import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/soal_evaluasi_controller.dart';

class SoalEvaluasiView extends StatefulWidget {
  const SoalEvaluasiView({Key? key}) : super(key: key);

  Widget build(context, SoalEvaluasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SoalEvaluasi"),
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
  State<SoalEvaluasiView> createState() => SoalEvaluasiController();
}