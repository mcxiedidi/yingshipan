import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class StartLinePage extends GetView<StartLineController> {
  const StartLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 这是一个极简启动页：controller.onReady 会异步决定并跳转
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

