import 'package:facitend/pages/home_page.dart';
import 'package:facitend/pages/login_page.dart';
import 'package:facitend/pages/onboarding_page.dart';
import 'package:facitend/pages/register_page.dart';
import 'package:get/get.dart';

class AppRouter {
  static const String onBoarding = "/onboarding";
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';

  static const String initialRoute = onBoarding;

  static List<GetPage> routes = [
    GetPage(name: onBoarding, page: () => OnboardingPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: register, page: () => RegisterPage()),
  ];
}
