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

  //Pretest prisma 6
  bool statusJumlahSisi = false;
  bool statusLuasSisiAlas = false;
  bool statusLuasSisiTegak = false;
  bool statusLuasSisiAtas = false;
  bool statusLuasPermukaan = false;

  //Pretest prisma 8
  bool statusJumlahSisiAlas = false;
  bool statusJumlahSisiTinggi = false;
  bool statusVolumePrisma = false;

  //Pretest limas 2
  bool statusTitikSudut = false;
  bool statusRusukLimas = false;
  bool statusSisiAlas = false;
  bool statusSisiTegak = false;

  //Pretest limas 3
  bool statusYaLimas = false;
  bool statusTidakLimas = false;

  //Pretest limas 6
  bool statusJumlahSisiAlasLimas = false;
  bool statusJumlahSisiTinggiLimas = false;
  bool statusVolumeLimas = false;

  //Pretest prisma 7
  bool statusJumlahSisiLimas = false;
  bool statusLuasSisiAlasLimas = false;
  bool statusLuasSisiTegakLimas = false;
  bool statusLuasPermukaanLimas = false;

  //New prestest

  //Pretest prisma 1
  bool statusTitikSudutPrisma = false;
  bool statusRusukPrisma = false;
  bool statusBidangPrisma = false;
  bool statusDiagonalBidangPrisma = false;
  bool statusDiagonalRuangPrisma = false;
  bool statusBidangDiagonalPrisma = false;
  bool statusJenisBangunRuangPrisma = false;

  //Pretest prisma 2
  bool statusYaPrismaSecond = false;
  bool statusTidakPrismaSecond = false;

  //Pretest prisma 3
  bool statusTitikSudutPrisma3 = false;
  bool statusRusukPrisma3 = false;
  bool statusBidangPrisma3 = false;
  bool statusDiagonalBidangPrisma3 = false;
  bool statusDiagonalRuangPrisma3 = false;
  bool statusBidangDiagonalPrisma3 = false;
  bool statusJenisBangunRuangPrisma3 = false;

  //Pretest prisma 4
  bool statusYaPrismaFourth = false;
  bool statusTidakPrismaFourth = false;

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

  Future updatePretestLimas() async {
    try {
      try {
        await _usersCollectionReference
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .update({'statusPretestLimas': true});
      } catch (e) {
        return e;
      }

      Get.offAll(const BagianLimasView());
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
