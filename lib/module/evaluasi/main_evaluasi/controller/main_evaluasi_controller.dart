import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class MainEvaluasiController extends State<MainEvaluasiView>
    implements MvcController {
  static late MainEvaluasiController instance;
  late MainEvaluasiView view;

  navSoal(kdMateri) {
    switch (kdMateri) {
      case 0:
        return Get.to(SoalEvaluasiPrismaView(kdMateri: kdMateri));
      case 1:
        return Get.to(SoalEvaluasiLimasView(kdMateri: kdMateri));
      case 2:
        return Get.to(SoalEvaluasiUmumView(kdMateri: kdMateri));

      default:
    }
  }

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
