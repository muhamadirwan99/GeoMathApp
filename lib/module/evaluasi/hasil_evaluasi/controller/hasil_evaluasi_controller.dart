import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/hasil_evaluasi_view.dart';

class HasilEvaluasiController extends State<HasilEvaluasiView> implements MvcController {
  static late HasilEvaluasiController instance;
  late HasilEvaluasiView view;

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