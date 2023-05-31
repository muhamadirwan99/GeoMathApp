import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/titik_sudut_prisma_view.dart';

class TitikSudutPrismaController extends State<TitikSudutPrismaView> implements MvcController {
  static late TitikSudutPrismaController instance;
  late TitikSudutPrismaView view;

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