import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/diagonal_bidang_prisma_view.dart';

class DiagonalBidangPrismaController extends State<DiagonalBidangPrismaView> implements MvcController {
  static late DiagonalBidangPrismaController instance;
  late DiagonalBidangPrismaView view;

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