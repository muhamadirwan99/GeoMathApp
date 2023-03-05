import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/daftar_prisma_view.dart';

class DaftarPrismaController extends State<DaftarPrismaView> implements MvcController {
  static late DaftarPrismaController instance;
  late DaftarPrismaView view;

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