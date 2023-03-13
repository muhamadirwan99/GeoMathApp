import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class ProfilController extends State<ProfilView> implements MvcController {
  static late ProfilController instance;
  late ProfilView view;

  User? id = FirebaseAuth.instance.currentUser;
  dynamic user = FirebaseFirestore.instance
      .collection("users")
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .snapshots();
  String nama = "";
  String kelas = "";
  String nis = "";
  String noTel = "";
  String email = "";

  getDataUser() async {
    var user =
        await FirebaseFirestore.instance.collection("users").doc(id?.uid).get();
    nama = user.data()!["nama"];
    kelas = user.data()!["kelas"];
    nis = user.data()!["nis"];
    noTel = user.data()!["noTel"];
    email = user.data()!["email"];
    update();
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(const SignInView());
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
