import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/latihan_soal_prisma_view.dart';

class LatihanSoalPrismaController extends State<LatihanSoalPrismaView>
    implements MvcController {
  static late LatihanSoalPrismaController instance;
  late LatihanSoalPrismaView view;

  bool statusUnsurBangunRuang = false;

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
