import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/beranda_view.dart';

class BerandaController extends State<BerandaView> implements MvcController {
  static late BerandaController instance;
  late BerandaView view;

  User? id = FirebaseAuth.instance.currentUser;
  String nama = "";

  getDataUser() async {
    var user =
        await FirebaseFirestore.instance.collection("users").doc(id?.uid).get();
    nama = user.data()!["nama"];

    update();
  }

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
