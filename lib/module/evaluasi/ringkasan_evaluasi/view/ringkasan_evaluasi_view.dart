import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/ringkasan_evaluasi_controller.dart';

class RingkasanEvaluasiView extends StatefulWidget {
  const RingkasanEvaluasiView({Key? key}) : super(key: key);

  Widget build(context, RingkasanEvaluasiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RingkasanEvaluasi"),
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
  State<RingkasanEvaluasiView> createState() => RingkasanEvaluasiController();
}