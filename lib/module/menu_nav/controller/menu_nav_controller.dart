import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class MenuNavController extends State<MenuNavView> implements MvcController {
  static late MenuNavController instance;
  late MenuNavView view;

  int currentIndex = 0;
  List<Widget> screens = [
    const BerandaView(),
    MainEvaluasiView(kdMateri: 2),
    const VideoPembelajaranView(),
    const ProfilView(),
  ];

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
