import 'package:flutter/material.dart';
import 'package:geomath_app/state_util.dart';
import '../view/kubus_prisma_view.dart';

class KubusPrismaController extends State<KubusPrismaView> implements MvcController {
  static late KubusPrismaController instance;
  late KubusPrismaView view;

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