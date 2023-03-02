import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/bagian_limas_view.dart';

class BagianLimasController extends State<BagianLimasView> implements MvcController {
  static late BagianLimasController instance;
  late BagianLimasView view;

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