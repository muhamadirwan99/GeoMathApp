import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/profil_view.dart';

class ProfilController extends State<ProfilView> implements MvcController {
  static late ProfilController instance;
  late ProfilView view;

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