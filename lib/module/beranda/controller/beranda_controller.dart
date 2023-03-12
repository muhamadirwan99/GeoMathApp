import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/beranda_view.dart';

class BerandaController extends State<BerandaView> implements MvcController {
  static late BerandaController instance;
  late BerandaView view;

  String nama = "";

  dynamic videos = FirebaseFirestore.instance.collection("videos").snapshots();
  dynamic user = FirebaseFirestore.instance
      .collection("users")
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .get();

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
