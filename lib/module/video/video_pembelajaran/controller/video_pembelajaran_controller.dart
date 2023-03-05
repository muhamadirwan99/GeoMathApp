import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/video_pembelajaran_view.dart';

class VideoPembelajaranController extends State<VideoPembelajaranView> implements MvcController {
  static late VideoPembelajaranController instance;
  late VideoPembelajaranView view;

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