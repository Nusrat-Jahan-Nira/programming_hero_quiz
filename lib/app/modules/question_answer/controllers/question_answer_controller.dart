import 'package:get/get.dart';
import 'package:programming_hero_quiz/app/models/question.dart';

import '../../../services/api_provider.dart';

class QuestionAnswerController extends GetxController {

  final ApiProvider api = Get.find<ApiProvider>();
  final apiResp = Rxn<List<Question>>();
  final questionList = Rx<List<Question>>([]);

  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   loadServerData();
  // }

  void loadServerData() async {

    apiResp.value = (await api.fetchQuestionList());

    if (apiResp.value != null){
      questionList.value = apiResp.value!;
    }

    print(questionList);

  }





// final myProducts = List<String>.generate(5, (i) => 'Product $i');

}