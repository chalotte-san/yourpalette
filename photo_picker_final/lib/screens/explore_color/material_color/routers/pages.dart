import 'package:get/get.dart';
import 'package:photo_picker_initial/screens/explore_color/material_color/index.dart';
import 'package:photo_picker_initial/screens/explore_color/material_color/main/index.dart';

import 'index.dart';

class RoutePages {
  static List<GetPage> list = [
    GetPage(
      name: RouteName.main,
      page: () => const MainPage(),
    ),
    GetPage(
      name: RouteName.materialColor,
      page: () => const MaterialColorPage(),
    ),
  ];
}
