import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/diagonal_ruang_prisma_view.dart';

class DiagonalRuangPrismaController extends State<DiagonalRuangPrismaView> implements MvcController {
  static late DiagonalRuangPrismaController instance;
  late DiagonalRuangPrismaView view;

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