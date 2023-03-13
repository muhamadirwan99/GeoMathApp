import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/ringkasan_evaluasi_view.dart';

class RingkasanEvaluasiController extends State<RingkasanEvaluasiView>
    implements MvcController {
  static late RingkasanEvaluasiController instance;
  late RingkasanEvaluasiView view;

  String imagePath = "";
  User? id = FirebaseAuth.instance.currentUser;

  Future<void> submitData(int questionLength, int questionRight) async {
    await FirebaseFirestore.instance.collection("users").doc(id!.uid).update(
      {
        'riwayatEvaluasi': FieldValue.arrayUnion(
          [
            {
              'akurasi': questionRight / questionLength,
              'date': DateTime.now(),
              'jawabanBenar': questionRight,
              'kdMateri': "1",
              'point': questionRight / questionLength,
              'gambar': imagePath,
            },
          ],
        ),
      },
    );
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
