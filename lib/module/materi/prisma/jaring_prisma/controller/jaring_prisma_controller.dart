import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/jaring_prisma_view.dart';

class JaringPrismaController extends State<JaringPrismaView>
    implements MvcController {
  static late JaringPrismaController instance;
  late JaringPrismaView view;

  //Midtest prisma 1
  bool sisiKubus = false;
  bool rumusKubus = false;
  bool luasKubus = false;

  //Midtest prisma 2
  bool sisiBalok = false;
  bool sisiAlasBalok = false;
  bool sisiTegakBalok = false;
  bool sisiAtasBalok = false;
  bool luasBalok = false;

  //Midtest prisma 3
  bool sisiPrisma = false;
  bool sisiAlasPrisma = false;
  bool sisiTegakPrisma = false;
  bool sisiAtasPrisma = false;
  bool luasPrisma = false;

  //Midtest prisma 4
  bool sisiVolumeKubus = false;
  bool bentukKubus = false;
  bool volumeKubus = false;

  //Midtest prisma 5
  bool sisiVolumeBalok = false;
  bool bentukBalok = false;
  bool volumeBalok = false;

  //Midtest prisma 6
  bool sisiAlasVolumePrisma = false;
  bool sisiTinggiVolumePrisma = false;
  bool volumePrisma = false;

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
