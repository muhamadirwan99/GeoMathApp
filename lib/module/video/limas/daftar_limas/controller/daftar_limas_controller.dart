import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/daftar_limas_view.dart';

class DaftarLimasController extends State<DaftarLimasView>
    implements MvcController {
  static late DaftarLimasController instance;
  late DaftarLimasView view;

  dynamic limas = FirebaseFirestore.instance
      .collection("videos")
      .where("kd_video", isEqualTo: "1")
      .snapshots();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
