import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import '../controller/detail_limas_controller.dart';

class DetailLimasView extends StatefulWidget {
  const DetailLimasView({Key? key}) : super(key: key);

  Widget build(context, DetailLimasController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailLimas"),
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
  State<DetailLimasView> createState() => DetailLimasController();
}