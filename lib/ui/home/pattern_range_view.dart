import 'package:flutter/material.dart';

import '../../models/home/pattern_range.dart';

class PatternRangeView extends StatelessWidget {
  final List<PatternRange> patternRangeList;

  const PatternRangeView({
    Key? key,
    required this.patternRangeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            mainAxisSpacing: 5,
            children: List.generate(
              patternRangeList.length,
              (index) => _patternRangeTile(
                patternRangeList[index],
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// category tile ui with title and image
  Widget _patternRangeTile(PatternRange patternRange) {
    return ClipRRect(
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Stack(
          children: [
            Image.network(
              patternRange.image!,
              width: 150,
              height: 150,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 100),
                  child: Text(
                    patternRange.name ?? '',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
