import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/evaluasi_view.dart';

class EvaluasiController extends State<EvaluasiView> implements MvcController {
  static late EvaluasiController instance;
  late EvaluasiView view;

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