import 'package:get/get.dart';
import 'package:programming_hero_quiz/app/modules/question_answer/controllers/question_answer_controller.dart';

import '../../../services/api_provider.dart';

class QuestionAnswerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiProvider>(ApiProvider());
    Get.lazyPut<QuestionAnswerController>(() => QuestionAnswerController());
  }
}