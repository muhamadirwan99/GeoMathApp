import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends State<SignInView> implements MvcController {
  static late SignInController instance;
  late SignInView view;

  String email = "";
  String password = "";
  bool obscure = true;
  bool loading = false;

  bool emptyEmail = true;
  bool emptyPassword = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  checkEmptyField(String value) {
    if (value.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  isAllFieldIsFilled() {
    if (email.isNotEmpty && password.isNotEmpty) {
      return true;
    }
    return false;
  }

  void onSubmit() {
    if (isAllFieldIsFilled()) {
      signInWithEmail(email, password);
    }
  }

  Future signInWithEmail(String email, String password) async {
    try {
      loading = true;
      update();
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      loading = false;
      update();
      Get.offAll(const MenuNavView());
    } on FirebaseAuthException catch (e) {
      loading = false;
      update();
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message.toString()),
        ),
      );
    } catch (e) {
      return e.toString();
    }
  }

  Future signInWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      loading = true;
      update();
      var userCredential = await _auth.signInWithCredential(credential);
      debugPrint("userCredential: $userCredential");
      loading = false;
      update();

      var col = FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid);
      DocumentSnapshot docSnap = await col.get();

      docSnap.exists
          ? Get.offAll(const OnboardingView())
          : Get.offAll(const DataDiriGoogleView());
    } catch (_) {}
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
