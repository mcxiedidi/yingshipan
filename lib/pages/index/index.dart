import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/index.dart';
import '../mine/index.dart';
import '../vod/index.dart';
import 'controller.dart';

/// App 主框架页：底部导航（三个 Tab）
///
/// - 首页：`HomePage`
/// - 资源库：`VodPage`
/// - 我的：`MinePage`
class IndexPage extends GetView<IndexController> {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = const [HomePage(), VodPage(), MinePage()];
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.currentIndex.value,
          children: pages,
        );
      }),
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: controller.setIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: '首页',
            ),
            NavigationDestination(
              icon: Icon(Icons.video_library_outlined),
              selectedIcon: Icon(Icons.video_library),
              label: '资源库',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: '我的',
            ),
          ],
        );
      }),
    );
  }
}