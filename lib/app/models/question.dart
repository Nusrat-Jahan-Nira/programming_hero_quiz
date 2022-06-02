// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  Question({
    required this.questions,
  });

  List<QuestionElement> questions;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    questions: List<QuestionElement>.from(json["questions"].map((x) => QuestionElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "questions": List<dynamic>.from(questions.map((x) => x.toJson())),
  };
}

class QuestionElement {
  QuestionElement({
    required this.question,
    required this.answers,
    required this.questionImageUrl,
    required this.correctAnswer,
    required this.score,
  });

  String question;
  Answers answers;
  String questionImageUrl;
  String correctAnswer;
  int score;

  factory QuestionElement.fromJson(Map<String, dynamic> json) => QuestionElement(
    question: json["question"] == null? null : json["question"],
    answers: Answers.fromJson(json["answers"]),
    questionImageUrl: json["questionImageUrl"] == null ? null : json["questionImageUrl"],
    correctAnswer: json["correctAnswer"] == null ? null : json["questionImageUrl"],
    score: json["score"] == null ? null : json["score"],
  );

  Map<String, dynamic> toJson() => {
    "question": question == null ? null : question,
    "answers": answers == null ? null : answers.toJson(),
    "questionImageUrl": questionImageUrl == null ? null : questionImageUrl,
    "correctAnswer": correctAnswer == null ? null : correctAnswer,
    "score": score == null ? null : score,
  };
}

class Answers {
  Answers({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
  });

  String a;
  String b;
  String c;
  String d;

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
    a: json["A"]== null ? null : json["A"],
    b: json["B"]== null ? null : json["B"],
    c: json["C"] == null ? null : json["C"],
    d: json["D"] == null ? null : json["D"],
  );

  Map<String, dynamic> toJson() => {
    "A": a,
    "B": b,
    "C": c == null ? null : c,
    "D": d == null ? null : d,
  };
}
