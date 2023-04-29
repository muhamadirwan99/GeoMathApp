import 'package:flutter/material.dart';
import 'package:geomath_app/core.dart';

class SoalEvaluasiUmumController extends State<SoalEvaluasiUmumView>
    implements MvcController {
  static late SoalEvaluasiUmumController instance;
  late SoalEvaluasiUmumView view;

  var db = ApiService();

  late Future questions;

  Future<List<dynamic>> getData() async {
    List<dynamic> data = await db.fetchQuestionsUmum();
    return data;
  }

  int index = 0;

  void nextQuestion(int questionLength, int kdMateri) {
    if (index == questionLength - 1) {
      showDialogSelesai();
    } else {
      setState(() {
        index++;
      });
    }
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
