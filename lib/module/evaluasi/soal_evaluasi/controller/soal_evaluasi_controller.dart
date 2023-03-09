import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/soal_evaluasi_view.dart';

class SoalEvaluasiController extends State<SoalEvaluasiView> implements MvcController {
  static late SoalEvaluasiController instance;
  late SoalEvaluasiView view;

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