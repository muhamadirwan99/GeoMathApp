import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/hasil_evaluasi_controller.dart';

class HasilEvaluasiView extends StatefulWidget {
  const HasilEvaluasiView({Key? key}) : super(key: key);

  Widget build(context, HasilEvaluasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HasilEvaluasi"),
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
  State<HasilEvaluasiView> createState() => HasilEvaluasiController();
}