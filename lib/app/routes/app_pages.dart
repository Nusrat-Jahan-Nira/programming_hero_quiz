import 'package:get/get.dart';
import 'package:programming_hero_quiz/app/modules/main_menu/bindings/main_menu_binding.dart';

import '../modules/main_menu/views/main_menu_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.main;

  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => MainMenuView(),
      binding: MainMenuBinding(),
      middlewares: [

      ],
    ),
  ];
}