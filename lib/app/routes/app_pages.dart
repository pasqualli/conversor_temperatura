import 'package:conversor_temp_app/app/modules/home/home_binding.dart';
import 'package:conversor_temp_app/app/modules/home/home_page.dart';
import 'package:get/get.dart';
import './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
