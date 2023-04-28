import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/bagian_bangun_ruang_prisma_view.dart';

class BagianBangunRuangPrismaController extends State<BagianBangunRuangPrismaView> implements MvcController {
  static late BagianBangunRuangPrismaController instance;
  late BagianBangunRuangPrismaView view;

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