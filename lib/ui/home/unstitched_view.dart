import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/home/unstitched.dart';

class UnstitchedView extends StatelessWidget {
  final List<Unstitched> unstitchedList;

  const UnstitchedView({
    Key? key,
    required this.unstitchedList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: unstitchedList.length,
      itemBuilder: (context, index, realIndex) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          unstitchedList[index].image!,
          height: 200,
          fit: BoxFit.fill,
        ),
      ),
      options: CarouselOptions(
        disableCenter: true,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
        aspectRatio: 1.2,
        viewportFraction: 0.5,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
