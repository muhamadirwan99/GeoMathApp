import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/bagian_view.dart';

class BagianController extends State<BagianView> implements MvcController {
  static late BagianController instance;
  late BagianView view;

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