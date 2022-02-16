import 'package:flutter/material.dart';

class DesignPatternView extends StatelessWidget {
  const DesignPatternView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Shop By Design Patterns',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 400,
            child: GridView.builder(
              itemCount: 10,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 10,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _categoryTile(),
            ),
          ),
        ],
      ),
    );
  }

  /// category tile ui with title and image
  Widget _categoryTile() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 4.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'http://sc04.alicdn.com/kf/Hd60bff0ddb614b88960e02912eee14a0M.jpg',
            width: 150,
            height: 180,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
