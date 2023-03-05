import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/detail_limas_view.dart';

class DetailLimasController extends State<DetailLimasView> implements MvcController {
  static late DetailLimasController instance;
  late DetailLimasView view;

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