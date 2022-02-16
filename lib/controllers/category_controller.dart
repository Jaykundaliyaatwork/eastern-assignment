import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/category_model.dart';
import '../../services/api_service.dart';
import '../../utils/log_messenger.dart';

class CategoryController extends GetxController {
  // call it self
  static CategoryController get categoryController => Get.find();
  RxBool isScreenLoading = false.obs;
  final ApiService _apiService = ApiService();
  RxList<CategoryModel> categoryList = <CategoryModel>[].obs;
  RxString categoryBannerImage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    _fetchAllCategory();
  }

  Future<void> _fetchAllCategory() async {
    try {
      Map<String, dynamic> result = await _apiService.fetchAllCategoryData();
      if (result.isNotEmpty) {
        categoryList.clear();

        /// add all category items from api response into [categoryList].
        for (final category in result['categories']) {
          categoryList.add(
            CategoryModel.fromJson(category),
          );
        }

        /// set banner image from api response to [categoryBannerImage]
        categoryBannerImage.value = result['banner_image'];
      }
      isScreenLoading(false);
    } catch (e) {
      isScreenLoading(false);
      shootLog(e.toString());
    }
  }
}
