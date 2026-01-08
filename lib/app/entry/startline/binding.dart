import 'package:get/get.dart';

import 'controller.dart';

class StartLineBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StartLineController());
  }
}

