import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';
import '../routes/app_routes.dart';

/// App 启动入口（启动流程都写在这里）
///
/// 目标：
/// - 写法直观可读：按顺序列出每一步
/// - 支持异步：每一步都可以 await
/// - main.dart 保持干净：只调用 [Startup.createApp]
class Startup {
  Startup._();

  /// 创建 App（包含启动流程）
  static Future<Widget> createApp() async {
    // 启动流程（可按需继续拆分/插入步骤）
    await _stepInitFlutterBindings();
    await _stepInitAppServices();
    await _stepWarmup();

    return _buildApp();
  }

  static Future<void> _stepInitFlutterBindings() async {
    // 预留：例如设置系统 UI、读取包信息、屏幕适配初始化等
  }

  static Future<void> _stepInitAppServices() async {
    // 预留：例如初始化网络层、缓存、数据库、登录态、依赖注入等
  }

  static Future<void> _stepWarmup() async {
    // 预留：例如预拉取配置、预热首页数据等
  }

  static Widget _buildApp() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YingShiPan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.start,
      getPages: AppPages.pages,
    );
  }
}