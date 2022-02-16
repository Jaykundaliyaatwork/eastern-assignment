import 'dart:developer';

import 'package:get/get.dart';

enum SnackLevel { top, bottom }

void shootLog(String message) {
  log(' --- \n$message --- \n');
}

void shootSnackBar({
  required String message,
  bool? isDismissible,
  SnackPosition? snackPosition,
}) {
  Get.showSnackbar(
    GetSnackBar(
      message: message,
      isDismissible: isDismissible ?? true,
      snackPosition: snackPosition ?? SnackPosition.BOTTOM,
    ),
  );
}
