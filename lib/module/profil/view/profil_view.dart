import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/profil_controller.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  Widget build(context, ProfilController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
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
  State<ProfilView> createState() => ProfilController();
}