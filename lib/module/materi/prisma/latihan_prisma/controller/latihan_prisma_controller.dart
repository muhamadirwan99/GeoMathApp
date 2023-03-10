import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/latihan_prisma_view.dart';

class LatihanPrismaController extends State<LatihanPrismaView> implements MvcController {
  static late LatihanPrismaController instance;
  late LatihanPrismaView view;

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