import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/data_diri_view.dart';

class DataDiriController extends State<DataDiriView> implements MvcController {
  static late DataDiriController instance;
  late DataDiriView view;

  String? kelas;
  List<String> listKelas = ["Kelas VII", "Kelas VIII", "Kelas IX"];

  String nis = "";
  String nama = "";

  bool emptyNis = true;
  bool emptyNama = true;
  bool emptyKelas = true;

  checkEmptyField(String value) {
    if (value.isNotEmpty) {
      return true;
    } else {
      return false;
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
