import 'dart:convert';

import 'package:get/get.dart';
import 'package:programming_hero_quiz/app/models/question.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/question_response.dart';

class ApiProvider extends GetConnect {

  Future<List<Question>?> fetchQuestionList() async {

    final QuestionResponse resp = QuestionResponse();

    final response = await get('https://herosapp.nyc3.digitaloceanspaces.com/quiz.json');

    try {
      if (response.status.hasError) {

      } else {
        var respStr = response.bodyString;
        print(response.bodyString);
        if (respStr != null) {

          final serverData = _getAsList(respStr);

          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('question', respStr);

          print(response.bodyString);
          return serverData;
        } else {
          return null;
        }
      }
    } catch (e) {

      return null;
    }
  }

  List<Question> _getAsList(String savedData) {
    // final list = (json.decode(savedData) as List)
    //     .map((e) => Question.fromJson(e))
    //     .toList();

    List<Question>  list = Question.fromJson(json.decode(savedData)) as List<Question>;
   // List<Question> list = (jsonDecode(savedData) as List<dynamic>).cast<Question>();

    return list;
  }


}