import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/rumus_prisma_view.dart';

class RumusPrismaController extends State<RumusPrismaView> implements MvcController {
  static late RumusPrismaController instance;
  late RumusPrismaView view;

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