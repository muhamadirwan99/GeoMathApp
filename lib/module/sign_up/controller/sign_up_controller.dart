import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/module/auth/sign_in/view/sign_in_view.dart';
import 'package:geomath_app/state_util.dart';
import '../view/sign_up_view.dart';

class SignUpController extends State<SignnUpView> implements MvcController {
  static late SignUpController instance;
  late SignnUpView view;

  String nama = "";
  String email = "";
  String password = "";
  String confirmPassword = "";

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  bool statusPassword = true;
  bool statusConfirmPassword = true;

  bool emptyNama = true;
  bool emptyEmail = true;
  bool emptyPassword = true;
  bool emptyConfirmPassword = true;

  bool loading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

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
    if (nama.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty) {
      return true;
    }
    return false;
  }

  void onSubmit() {
    if (isAllFieldIsFilled() && statusPassword && statusConfirmPassword) {
      signUpWithEmail(email, password);
    }
  }

  Future signUpWithEmail(String email, String password) async {
    try {
      loading = true;
      update();

      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = result.user!;
      user.updateDisplayName(nama);

      loading = false;
      update();

      print(user);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Akun telah berhasil dibuat, silahkan login!"),
        ),
      );

      Get.to(const SignInView());

      // User user = userCredential.user!;
      // return user.uid;
    } on FirebaseAuthException catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message.toString()),
        ),
      );
    } catch (e) {
      return e.toString();
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
