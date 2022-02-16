import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/bottom_nav_controller.dart';
import '../../utils/eastern_color.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator({Key? key}) : super(key: key);

  final _bottomNavCtr = BottomNavigatorController.bottomNavigatorController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _bottomNavCtr
            .currentPage[_bottomNavCtr.currentBottomNavIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColor.primaryColor,
          unselectedItemColor: const Color(0xFFB8B4B4),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _bottomNavCtr.currentBottomNavIndex.value,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.toc_outlined),
              label: 'CATEGORY',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.donut_small_outlined),
              label: 'CURATE',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.campaign_outlined),
              label: 'SALE',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              label: 'MORE',
            ),
          ],
          onTap: (index) => _bottomNavCtr.changeCurrentBottomNavIndex(index),
        ),
      ),
    );
  }
}
