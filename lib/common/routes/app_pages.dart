import 'package:get/get.dart';

import '../../pages/index/binding.dart';
import '../../pages/index/index.dart';
import '../../app/entry/startline/binding.dart';
import '../../app/entry/startline/index.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage<dynamic>>[
    GetPage(
      name: AppRoutes.start,
      page: () => const StartLinePage(),
      binding: StartLineBinding(),
    ),
    GetPage(
      name: AppRoutes.index,
      page: () => const IndexPage(),
      binding: IndexBinding(),
    ),
  ];
}

