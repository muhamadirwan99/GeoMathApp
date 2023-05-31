import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/bidang_diagonal_prisma_view.dart';

class BidangDiagonalPrismaController extends State<BidangDiagonalPrismaView> implements MvcController {
  static late BidangDiagonalPrismaController instance;
  late BidangDiagonalPrismaView view;

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