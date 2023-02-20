import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class DataDiriController extends State<DataDiriView> implements MvcController {
  static late DataDiriController instance;
  late DataDiriView view;

  String? kelas = UserDatabase.kelas;
  List<String> listKelas = ["Kelas VII", "Kelas VIII", "Kelas IX"];

  String? nis = UserDatabase.nis;
  String? nama = UserDatabase.nama;
  String? noTel = "";

  bool emptyNis = true;
  bool emptyNama = true;
  bool emptyKelas = true;
  bool emptyNoTel = true;

  bool loading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
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
      signUpWithEmail(
        UserDatabase.email.toString(),
        UserDatabase.password.toString(),
      );
    }
  }

  Future signUpWithEmail(String email, String password) async {
    try {
      loading = true;
      update();

      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: UserDatabase.email.toString(),
        password: UserDatabase.password.toString(),
      );

      UserModel user = UserModel(
        id: result.user!.uid,
        email: UserDatabase.email.toString(),
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

      loading = false;
      update();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const DialogPendaftaranSukses();
        },
      );
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
