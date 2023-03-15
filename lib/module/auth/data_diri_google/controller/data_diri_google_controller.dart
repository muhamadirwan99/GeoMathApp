import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class DataDiriGoogleController extends State<DataDiriGoogleView>
    implements MvcController {
  static late DataDiriGoogleController instance;
  late DataDiriGoogleView view;

  String? kelas = "";
  List<String> listKelas = ["Kelas VII", "Kelas VIII", "Kelas IX"];

  String? nis = "";
  String? nama = "";
  String? noTel = "";

  bool emptyNis = true;
  bool emptyNama = true;
  bool emptyKelas = true;
  bool emptyNoTel = true;

  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection("users");

  checkEmptyField(String value) {
    if (value.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  isAllFieldIsFilled() {
    if (nis != "" && nama != "" && kelas != null && noTel != "") {
      return true;
    }
    return false;
  }

  void onSubmit() {
    if (isAllFieldIsFilled()) {
      updateData();
    }
  }

  Future updateData() async {
    try {
      UserModel user = UserModel(
        id: auth.currentUser!.uid,
        email: auth.currentUser!.email.toString(),
        nama: nama.toString(),
        nis: nis.toString(),
        kelas: kelas.toString(),
        noTel: noTel.toString(),
      );

      try {
        await _usersCollectionReference.doc(user.id).set(user.toJson());
      } catch (e) {
        return e;
      }

      Get.offAll(const MenuNavView());
    } on FirebaseAuthException catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message.toString()),
        ),
      );
    } catch (e) {
      return e.toString();
    }
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
