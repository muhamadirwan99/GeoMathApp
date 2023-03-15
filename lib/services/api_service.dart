import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:geomath_app/core.dart';
import 'package:http/http.dart' as http; // the http package
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:path/path.dart';

class ApiService {
  final umum = Uri.parse(
      'https://geomathapp-7b721-default-rtdb.asia-southeast1.firebasedatabase.app/umum.json');
  final limas = Uri.parse(
      'https://geomathapp-7b721-default-rtdb.asia-southeast1.firebasedatabase.app/limas.json');
  final prisma = Uri.parse(
      'https://geomathapp-7b721-default-rtdb.asia-southeast1.firebasedatabase.app/prisma.json');

  Future<List<Question>> fetchQuestionsUmum() async {
    return http.get(umum).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
          image: value['image'],
        );
        newQuestions.add(newQuestion);
      });

      return newQuestions;
    });
  }

  Future<List<Question>> fetchQuestionsLimas() async {
    return http.get(limas).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
          image: value['image'],
        );
        newQuestions.add(newQuestion);
      });

      return newQuestions;
    });
  }

  Future<List<Question>> fetchQuestionsPrisma() async {
    return http.get(prisma).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
          image: value['image'],
        );
        newQuestions.add(newQuestion);
      });

      return newQuestions;
    });
  }

  static Future<String> uploadImage(XFile imageFile) async {
    String fileName = basename(imageFile.path);

    Reference ref = FirebaseStorage.instance.ref().child(fileName);
    UploadTask task = ref.putFile(File(imageFile.path));
    TaskSnapshot snapshot = await task;

    return await snapshot.ref.getDownloadURL();
  }
}
