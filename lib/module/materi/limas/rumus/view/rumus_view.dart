import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/rumus_controller.dart';

class RumusView extends StatefulWidget {
  const RumusView({Key? key}) : super(key: key);

  Widget build(context, RumusController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Rumus"),
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
  State<RumusView> createState() => RumusController();
}