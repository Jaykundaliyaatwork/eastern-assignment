import 'package:flutter/material.dart';

import '../../models/home/sticky_menu_model.dart';

class StickyMenuView extends StatelessWidget {
  final List<StickyMenu> stickyMenuList;

  const StickyMenuView({
    Key? key,
    required this.stickyMenuList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            stickyMenuList.length,
            (index) => stickyTile(stickyMenuList[index]),
          ),
        ),
      ),
    );
  }

  /// sticky tile ui with title and image
  Widget stickyTile(StickyMenu stickyMenu) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              stickyMenu.image!,
              width: 150,
              height: 80,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(stickyMenu.title ?? ''),
            )
          ],
        ),
      ),
    );
  }
}
