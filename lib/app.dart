import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../services/routes/app_pages.dart';

class EasternApp extends StatelessWidget {
  const EasternApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// wrap with sizer for responsive ui
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        navigatorKey: Get.key,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: AppPages.routes,
        initialRoute: AppPages.initialRoute,
      ),
    );
  }
}
