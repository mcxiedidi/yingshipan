import 'package:get/get.dart';

class IndexController extends GetxController {
  final currentIndex = 0.obs;

  void setIndex(int index) {
    currentIndex.value = index;
  }
}

