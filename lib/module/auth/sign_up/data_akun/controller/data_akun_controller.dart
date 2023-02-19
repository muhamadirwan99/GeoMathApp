import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class DataAkunController extends State<DataAkunView> implements MvcController {
  static late DataAkunController instance;
  late DataAkunView view;

  String? email = UserDatabase.email;
  String? password = UserDatabase.password;
  String? confirmPassword = UserDatabase.password;

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  bool statusPassword = true;
  bool statusConfirmPassword = true;

  bool emptyNama = true;
  bool emptyEmail = true;
  bool emptyPassword = true;
  bool emptyConfirmPassword = true;

  bool loading = false;

  late String _password;
  late String _confirmPassword;

  RegExp regex = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[$-/:-?@{-~!"^_`\[\]]).{6,}$');

  void checkPassword(String value) {
    _password = value.trim();

    if (_password.isEmpty) {
      statusPassword = true;
      update();
    } else {
      if (!regex.hasMatch(_password)) {
        statusPassword = false;
        update();
      } else {
        statusPassword = true;
        update();
      }
    }
  }

  checkConfirmPassword(String value) {
    _confirmPassword = value.trim();

    if (_confirmPassword == password) {
      statusConfirmPassword = true;
      update();
    } else {
      statusConfirmPassword = false;
      update();
    }
  }

  checkEmptyField(String value) {
    if (value.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  isAllFieldIsFilled() {
    if (email != "" && password != "" && confirmPassword != "") {
      return true;
    }
    return false;
  }

  void onSubmit() {
    if (isAllFieldIsFilled() && statusPassword && statusConfirmPassword) {
      Get.to(
        DataDiriView(email: email.toString(), password: password.toString()),
      );
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
