import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:geomath_app/core.dart';
import 'package:http/http.dart' as http; // the http package
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:path/path.dart';

class ApiService {
  // let's first create  a function to add a question to our database.
// declare the name of the table you want to create and add .json as suffix
  final url = Uri.parse(
      'https://geomathapp-7b721-default-rtdb.asia-southeast1.firebasedatabase.app/limas.json');

  // fetch the data from database
  Future<List<Question>> fetchQuestions() async {
    // we got the data from just using this. now let's print it to see what we got.
    return http.get(url).then((response) {
      // the 'then' method returns a 'response' which is our data.
      // to whats inside we have to decode it first.
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
          id: key, // the encrypted key/the title we gave to our data
          title: value['title'], // title of the question
          options: Map.castFrom(value['options']), // options of the question
          image: value['image'], // options of the question
        );
        // add to newQuestions
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
