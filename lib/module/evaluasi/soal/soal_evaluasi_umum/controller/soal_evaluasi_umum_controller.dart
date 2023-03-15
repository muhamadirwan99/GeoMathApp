import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class SoalEvaluasiUmumController extends State<SoalEvaluasiUmumView>
    implements MvcController {
  static late SoalEvaluasiUmumController instance;
  late SoalEvaluasiUmumView view;

  var db = ApiService();

  late Future questions;

  Future<List<Question>> getData() async {
    return db.fetchQuestionsUmum();
  }

  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  bool answer = false;

  String onSelected = "";
  void nextQuestion(int questionLength, int kdMateri) {
    if (index == questionLength - 1) {
      Get.to(
        RingkasanEvaluasiView(
          questionLength: questionLength,
          questionRight: score,
          kdMateri: kdMateri,
        ),
      );
    } else {
      if (isPressed) {
        setState(() {
          index++;
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

  void submitAnswer(bool value) {
    if (value == true) {
      score++;
    }
  }

  void checkAnswerAndUpdate(bool value, String key) {
    onSelected = key;
    isPressed = true;
    isAlreadySelected = true;
    answer = value;
    update();
  }

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
