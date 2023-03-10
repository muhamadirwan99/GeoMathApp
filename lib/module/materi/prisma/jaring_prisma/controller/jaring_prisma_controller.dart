import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/jaring_prisma_view.dart';

class JaringPrismaController extends State<JaringPrismaView> implements MvcController {
  static late JaringPrismaController instance;
  late JaringPrismaView view;

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