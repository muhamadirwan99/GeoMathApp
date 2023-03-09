import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/main_evaluasi_view.dart';

class MainEvaluasiController extends State<MainEvaluasiView> implements MvcController {
  static late MainEvaluasiController instance;
  late MainEvaluasiView view;

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