import 'package:eastern_assignment/controllers/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependency injection
    ///
    /// bind BottomNavigatorController to bottomNavigator page
    Get.lazyPut(() => BottomNavigatorController());
  }
}
