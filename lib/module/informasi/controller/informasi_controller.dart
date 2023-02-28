import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/informasi_view.dart';

class InformasiController extends State<InformasiView> implements MvcController {
  static late InformasiController instance;
  late InformasiView view;

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