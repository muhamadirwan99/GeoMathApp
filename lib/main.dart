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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      home: const SignInView(),
    );
  }
}
