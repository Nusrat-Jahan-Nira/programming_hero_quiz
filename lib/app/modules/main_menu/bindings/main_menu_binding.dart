import 'package:get/get.dart';

import '../../../services/api_provider.dart';
import '../controllers/main_menu_controller.dart';

class MainMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiProvider>(ApiProvider());
    Get.lazyPut<MainMenuController>(() => MainMenuController());
  }
}