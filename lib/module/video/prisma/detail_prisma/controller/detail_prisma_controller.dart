import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/detail_prisma_view.dart';

class DetailPrismaController extends State<DetailPrismaView> implements MvcController {
  static late DetailPrismaController instance;
  late DetailPrismaView view;

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