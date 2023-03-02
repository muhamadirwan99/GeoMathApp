import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/rumus_limas_view.dart';

class RumusLimasController extends State<RumusLimasView> implements MvcController {
  static late RumusLimasController instance;
  late RumusLimasView view;

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