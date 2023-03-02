import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/rumus_limas_controller.dart';

class RumusLimasView extends StatefulWidget {
  const RumusLimasView({Key? key}) : super(key: key);

  Widget build(context, RumusLimasController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RumusLimas"),
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
  State<RumusLimasView> createState() => RumusLimasController();
}