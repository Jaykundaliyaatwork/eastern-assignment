import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ui/category/category_page.dart';
import '../../ui/curate/curate_page.dart';
import '../../ui/home/home_page.dart';
import '../../ui/more/more_page.dart';
import '../../ui/sale/sale_page.dart';

class BottomNavigatorController extends GetxController {
  // call it self
  static BottomNavigatorController get bottomNavigatorController => Get.find();
  RxInt currentBottomNavIndex = 0.obs;
  final List<Widget> currentPage = <Widget>[
    HomePage(),
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
