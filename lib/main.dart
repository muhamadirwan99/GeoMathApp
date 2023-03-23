import 'package:geomath_app/state_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geomath_app/common/style.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }
  mainStorage = await Hive.openBox('mainStorage');

  await UserDatabase.load();

  bool user = true;

  if (FirebaseAuth.instance.currentUser != null) {
    user = false;
  }

  runApp(MyApp(user: user));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  bool user;
  MyApp({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geomathapp',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primaryColor: primaryPurple,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: neutral50),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryPurple,
        ),
      ),
      home: user ? const SignInView() : const MenuNavView(),
    );
  }
}
