import 'package:eastern_assignment/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_color/random_color.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/category_controller.dart';
import '../../utils/eastern_color.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key}) : super(key: key);

  final categoryCtr = CategoryController.categoryController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (categoryCtr.isScreenLoading.isTrue) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          );
        }
        return ListView.separated(
          itemCount: categoryCtr.categoryList.length,
          itemBuilder: (context, index) => _categoryTile(
            categoryCtr.categoryList[index],
          ),
          separatorBuilder: (context, index) => const Divider(
            color: Colors.white,
            height: 0.5,
          ),
        );
      }),
    );
  }

  Widget _categoryTile(CategoryModel category) {
    Color randomColor = _getRandomColor();
    return SizedBox(
      height: 15.h,
      width: 100.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 50.w,
              height: double.infinity,
              color: randomColor.withOpacity(0.8),
              child: category.isExpandable
                  ? const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          Container(
            width: 60.w,
            decoration: BoxDecoration(
              color: randomColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  category.categoryName ?? '',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getRandomColor() {
    RandomColor _randomColor = RandomColor();
    return _randomColor.randomColor(colorBrightness: ColorBrightness.light);
  }
}
