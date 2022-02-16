import 'package:eastern_assignment/controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          selectedItemColor: const Color(0xFFECD859),
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
