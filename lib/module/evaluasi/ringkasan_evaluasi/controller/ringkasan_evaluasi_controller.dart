import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/ringkasan_evaluasi_view.dart';

class RingkasanEvaluasiController extends State<RingkasanEvaluasiView> implements MvcController {
  static late RingkasanEvaluasiController instance;
  late RingkasanEvaluasiView view;

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