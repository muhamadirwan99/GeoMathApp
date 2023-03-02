import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/jaring_limas_view.dart';

class JaringLimasController extends State<JaringLimasView> implements MvcController {
  static late JaringLimasController instance;
  late JaringLimasView view;

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