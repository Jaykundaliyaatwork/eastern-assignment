import 'package:eastern_assignment/ui/home/boutique_collection_view.dart';
import 'package:eastern_assignment/ui/home/category_view.dart';
import 'package:eastern_assignment/ui/home/design_pattern_view.dart';
import 'package:eastern_assignment/ui/home/occasion_design_view.dart';
import 'package:eastern_assignment/ui/home/offer_banner_view.dart';
import 'package:eastern_assignment/ui/home/pattern_range_view.dart';
import 'package:eastern_assignment/ui/home/unstitched_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../ui/home/sticky_menu_view.dart';
import '../../utils/eastern_color.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final homeCtr = HomeController.homeController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: const CircleAvatar(
          backgroundColor: AppColor.primaryColor,
          radius: 15,
        ),
        title: const Text(
          'FABCURATE',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 4,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Obx(() {
        if (homeCtr.isScreenLoading.isTrue) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        }
        return SingleChildScrollView(
          child: Column(
            children: [
              StickyMenuView(stickyMenuList: homeCtr.homeStickyMenuList),
              OfferBannerView(offerBannerList: homeCtr.offerCodeBannerList),
              CategoryView(categories: homeCtr.homeCategoryList),
              const DesignPatternView(),
              UnstitchedView(unstitchedList: homeCtr.unstitchedList),
              BoutiqueView(boutiqueCollection: homeCtr.boutiqueCollection),
              PatternRangeView(patternRangeList: homeCtr.patternRangeList),
              OccasionDesignView(designOccasion: homeCtr.designOccasionList)
            ],
          ),
        );
      }),
    );
  }
}
