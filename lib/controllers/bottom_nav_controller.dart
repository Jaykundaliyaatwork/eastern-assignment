import 'package:eastern_assignment/ui/category/category_page.dart';
import 'package:eastern_assignment/ui/curate/curate_page.dart';
import 'package:eastern_assignment/ui/home/home_page.dart';
import 'package:eastern_assignment/ui/more/more_page.dart';
import 'package:eastern_assignment/ui/sale/sale_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BottomNavigatorController extends GetxController {
  // call it self
  static BottomNavigatorController get bottomNavigatorController => Get.find();
  RxInt currentBottomNavIndex = 0.obs;
  final List<Widget> currentPage = <Widget>[
    const HomePage(),
    const CategoryPage(),
    const CuratePage(),
    const SalePage(),
    const MorePage()
  ].obs;

  /// change current bottom nav according to bottom on tap.
  changeCurrentBottomNavIndex(int index) {
    currentBottomNavIndex.value = index;
  }
}
