import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../utils/eastern_color.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final homeCtr = HomeController.homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (homeCtr.isScreenLoading.isTrue) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        }
        return const Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }),
    );
  }
}
