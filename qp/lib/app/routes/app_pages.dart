import 'package:get/get.dart';

import '../modules/Home/bindings/home_binding.dart';
import '../modules/Home/views/home_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Registration/bindings/registration_binding.dart';
import '../modules/Registration/views/registration_view.dart';
import '../modules/createStory/bindings/create_story_binding.dart';
import '../modules/createStory/views/create_story_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => const RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_STORY,
      page: () => const CreateStoryView(),
      binding: CreateStoryBinding(),
    ),
  ];
}
