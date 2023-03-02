import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/jaring_view.dart';

class JaringController extends State<JaringView> implements MvcController {
  static late JaringController instance;
  late JaringView view;

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