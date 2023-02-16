import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/sign_up_view.dart';

class SignUpController extends State<SignUpView> implements MvcController {
  static late SignUpController instance;
  late SignUpView view;

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