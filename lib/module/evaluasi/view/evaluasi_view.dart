import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/evaluasi_controller.dart';

class EvaluasiView extends StatefulWidget {
  const EvaluasiView({Key? key}) : super(key: key);

  Widget build(context, EvaluasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Evaluasi"),
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
  State<EvaluasiView> createState() => EvaluasiController();
}