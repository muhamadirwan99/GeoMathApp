import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/detail_video_pembelajaran_view.dart';

class DetailVideoPembelajaranController extends State<DetailVideoPembelajaranView> implements MvcController {
  static late DetailVideoPembelajaranController instance;
  late DetailVideoPembelajaranView view;

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