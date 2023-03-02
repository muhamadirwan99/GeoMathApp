import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/jaring_limas_controller.dart';

class JaringLimasView extends StatefulWidget {
  const JaringLimasView({Key? key}) : super(key: key);

  Widget build(context, JaringLimasController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("JaringLimas"),
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
  State<JaringLimasView> createState() => JaringLimasController();
}