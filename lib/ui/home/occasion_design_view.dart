import 'package:flutter/material.dart';

import '../../models/home/design_occasion.dart';

class OccasionDesignView extends StatelessWidget {
  final List<DesignOccasion> designOccasion;

  const OccasionDesignView({
    Key? key,
    required this.designOccasion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Design As Per Occasion',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 400,
          child: SizedBox(
            height: 400,
            child: GridView.builder(
              itemCount: designOccasion.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => _occasionDesignTile(
                designOccasion[index],
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// category tile ui with title and image
  Widget _occasionDesignTile(DesignOccasion occasion) {
    return Stack(
      children: [
        Image.network(
          occasion.image!,
          width: 150,
          height: 150,
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: 30,
            width: double.infinity,
            color: Colors.white54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 100),
                  child: Text(
                    occasion.name ?? '',
                    style: const TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'collection',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '+Explore',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
