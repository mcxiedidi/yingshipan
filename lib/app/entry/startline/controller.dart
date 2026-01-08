import 'package:get/get.dart';

import '../../../common/routes/app_routes.dart';

class StartLineController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _runStartLine();
  }

  Future<void> _runStartLine() async {
    // 启动线支持异步：后续可在这里判断是否首次启动、是否登录、是否需要引导页等
    await Future<void>.delayed(Duration.zero);
    Get.offAllNamed(AppRoutes.index);
  }
}

