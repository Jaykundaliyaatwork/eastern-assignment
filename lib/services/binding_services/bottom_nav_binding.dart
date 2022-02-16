import 'package:get/get.dart';

import '../../controllers/bottom_nav_controller.dart';
import '../../controllers/home_controller.dart';

class BottomNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependency injection
    ///
    /// bind BottomNavigatorController to bottomNavigator page
    Get.lazyPut(() => BottomNavigatorController());

    /// bind HomeController to Home page
    Get.lazyPut(() => HomeController());
  }
}
