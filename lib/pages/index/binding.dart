import 'package:get/get.dart';

import '../home/controller.dart';
import '../mine/controller.dart';
import '../vod/controller.dart';
import 'controller.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(IndexController());

    // 三个 Tab 页的 controller（后续可按需替换成 lazyPut/fenix）
    Get.put(HomeController());
    Get.put(VodController());
    Get.put(MineController());
  }
}

