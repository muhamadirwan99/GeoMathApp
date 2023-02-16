import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/beranda_controller.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  Widget build(context, BerandaController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda"),
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
  State<BerandaView> createState() => BerandaController();
}