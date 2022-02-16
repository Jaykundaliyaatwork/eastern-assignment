import 'package:eastern_assignment/models/home/home_category.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final List<HomeCategory> categories;

  const CategoryView({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shop By Category',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 400,
            child: GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 2,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _categoryTile(
                categories[index],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// category tile ui with title and image
  Widget _categoryTile(HomeCategory category) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 4.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            category.image!,
            width: 150,
            height: 150,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(category.name ?? ''),
          ),
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text('+Explore'),
          )
        ],
      ),
    );
  }
}
