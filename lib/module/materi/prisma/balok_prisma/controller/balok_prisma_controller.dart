import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/balok_prisma_view.dart';

class BalokPrismaController extends State<BalokPrismaView> implements MvcController {
  static late BalokPrismaController instance;
  late BalokPrismaView view;

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