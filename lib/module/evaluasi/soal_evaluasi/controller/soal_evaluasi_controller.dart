import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class SoalEvaluasiController extends State<SoalEvaluasiView>
    implements MvcController {
  static late SoalEvaluasiController instance;
  late SoalEvaluasiView view;

  // create an object for Dbconnect
  var db = ApiService();

  late Future questions;

  Future<List<Question>> getData() async {
    return db.fetchQuestions();
  }

  // create an index to loop through _questions
  int index = 0;
  // create a score variable
  int score = 0;
  // create a boolean value to check if the user has clicked
  bool isPressed = false;
  // create a function to display the next question
  bool isAlreadySelected = false;
  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      // this is the block where the questions end.
      print("questionLength");
      print(questionLength);

      Get.to(
        RingkasanEvaluasiView(
          questionLength: questionLength,
          questionRight: score,
        ),
      );
      // showDialog(
      //     context: context,
      //     barrierDismissible:
      //         false, // this will disable the dissmis function on clicking outside of box
      //     builder: (ctx) => ResultBox(
      //           result: score, // total points the user got
      //           questionLength: questionLength, // out of how many questions
      //           onPressed: startOver,
      //         ));
    } else {
      if (isPressed) {
        setState(() {
          index++; // when the index will change to 1. rebuild the app.
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please select any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  // create a function for changing color
  void checkAnswerAndUpdate(bool value) {
    print("value");
    print(value);
    if (isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  // create a function to start over
  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }

  @override
  void initState() {
    questions = getData();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
