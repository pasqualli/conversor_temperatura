import 'package:conversor_temp_app/app/routes/app_pages.dart';
import 'package:conversor_temp_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Conversor de Temperatura",
      initialRoute: Routes.home,
      getPages: AppPages.pages,
    ),
  );
}
