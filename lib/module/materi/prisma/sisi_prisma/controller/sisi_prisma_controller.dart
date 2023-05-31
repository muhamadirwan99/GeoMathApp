import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/sisi_prisma_view.dart';

class SisiPrismaController extends State<SisiPrismaView> implements MvcController {
  static late SisiPrismaController instance;
  late SisiPrismaView view;

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