import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/bagian_prisma_view.dart';

class BagianPrismaController extends State<BagianPrismaView> implements MvcController {
  static late BagianPrismaController instance;
  late BagianPrismaView view;

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