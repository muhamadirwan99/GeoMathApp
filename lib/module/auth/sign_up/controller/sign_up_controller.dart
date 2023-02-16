import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/module/auth/sign_in/view/sign_in_view.dart';
import 'package:geomath_app/state_util.dart';
import '../view/sign_up_view.dart';

class SignUpController extends State<SignUpView> implements MvcController {
  static late SignUpController instance;
  late SignUpView view;

  String email = "";
  String password = "";
  bool obscure = true;
  bool loading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signUpWithEmail(String email, String password) async {
    try {
      loading = true;
      update();
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      loading = false;
      update();

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
