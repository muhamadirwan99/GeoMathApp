import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/latihan_limas_view.dart';

class LatihanLimasController extends State<LatihanLimasView> implements MvcController {
  static late LatihanLimasController instance;
  late LatihanLimasView view;

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