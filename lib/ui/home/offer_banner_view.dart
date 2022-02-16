import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../models/home/offer_model.dart';

class OfferBannerView extends StatelessWidget {
  final List<OfferModel> offerBannerList;

  const OfferBannerView({
    Key? key,
    required this.offerBannerList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5, 5, 15),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: offerBannerList.length,
            itemBuilder: (context, index, realIndex) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                offerBannerList[index].bannerImage!,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            options: CarouselOptions(
              viewportFraction: 0.8,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CarouselSlider.builder(
            itemCount: offerBannerList.length,
            itemBuilder: (context, index, realIndex) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  offerBannerList[index].bannerImage!,
                  height: 130,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            options: CarouselOptions(
              viewportFraction: 0.75,
            ),
          ),
        ],
      ),
    );
  }
}
