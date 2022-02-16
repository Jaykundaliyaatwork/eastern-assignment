import 'package:eastern_assignment/services/binding_services/bottom_nav_binding.dart';
import 'package:eastern_assignment/services/routes/app_routes.dart';
import 'package:eastern_assignment/splash.dart';
import 'package:eastern_assignment/ui/bottom_nav/bottom_navigator.dart';
import 'package:get/get.dart';

class AppPages {
  static const String initialRoute = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.bottomNavigator,
      page: () => BottomNavigator(),
      binding: BottomNavigatorBinding(),
    ),
  ];
}
