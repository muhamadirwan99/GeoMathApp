import 'package:geomath_app/core.dart';

class UserDatabase {
  static String? email = "";
  static String? password = "";
  static String? nama = "";
  static String? nis = "";
  static String? kelas = "";

  static load() async {
    email = mainStorage.get("email");
    password = mainStorage.get("password");
    nama = mainStorage.get("nama");
    nis = mainStorage.get("nis");
    kelas = mainStorage.get("kelas");
  }

  static save(
    String? email,
    String? password,
    String? nama,
    String? nis,
    String? kelas,
  ) async {
    mainStorage.put("email", email);
    mainStorage.put("password", password);
    mainStorage.put("nama", nama);
    mainStorage.put("nis", nis);
    mainStorage.put("kelas", kelas);

    UserDatabase.email = email;
    UserDatabase.password = password;
    UserDatabase.nama = nama;
    UserDatabase.nis = nis;
    UserDatabase.kelas = kelas;
  }
}
