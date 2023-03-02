import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/rumus_view.dart';

class RumusController extends State<RumusView> implements MvcController {
  static late RumusController instance;
  late RumusView view;

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