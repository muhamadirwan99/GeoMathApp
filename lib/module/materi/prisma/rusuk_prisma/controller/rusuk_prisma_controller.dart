import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/rusuk_prisma_view.dart';

class RusukPrismaController extends State<RusukPrismaView> implements MvcController {
  static late RusukPrismaController instance;
  late RusukPrismaView view;

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