import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/home/boutique_collection.dart';

class BoutiqueView extends StatefulWidget {
  final List<BoutiqueCollection> boutiqueCollection;

  const BoutiqueView({
    Key? key,
    required this.boutiqueCollection,
  }) : super(key: key);

  @override
  State<BoutiqueView> createState() => _BoutiqueViewState();
}

class _BoutiqueViewState extends State<BoutiqueView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.boutiqueCollection.length,
          itemBuilder: (context, index, realIndex) => ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              widget.boutiqueCollection[index].bannerImage!,
              fit: BoxFit.fill,
            ),
          ),
          options: CarouselOptions(
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
              height: 400,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.boutiqueCollection.length,
            (index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
              child: Container(
                height: currentIndex == index ? 10 : 5,
                width: currentIndex == index ? 10 : 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? const Color(0xFF6E6C6C)
                      : const Color(0xFF999595),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
