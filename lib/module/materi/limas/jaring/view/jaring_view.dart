import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/jaring_controller.dart';

class JaringView extends StatefulWidget {
  const JaringView({Key? key}) : super(key: key);

  Widget build(context, JaringController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Jaring"),
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
  State<JaringView> createState() => JaringController();
}