import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class BerandaController extends State<BerandaView> implements MvcController {
  static late BerandaController instance;
  late BerandaView view;

  String nama = "";

  bool statusPretestPrisma = false;
  bool statusPretestLimas = false;

  //Pretest prisma 1
  bool statusPersamaan = false;
  bool statusPerbedaan = false;

  //Pretest prisma 2
  bool statusSudut = false;
  bool statusRusuk = false;
  bool statusBidang = false;
  bool statusDiagonalBidang = false;
  bool statusDiagonalRuang = false;
  bool statusBidangDiagonal = false;

  //Pretest prisma 3
  bool statusYaPrisma = false;
  bool statusTidakPrisma = false;

  dynamic videos = FirebaseFirestore.instance.collection("videos").snapshots();
  dynamic user = FirebaseFirestore.instance
      .collection("users")
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .get();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection("users");

  Future updatePretestPrisma() async {
    try {
      try {
        await _usersCollectionReference
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .update({'statusPretestPrisma': true});
      } catch (e) {
        return e;
      }

      Get.offAll(const BagianPrismaView());
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
