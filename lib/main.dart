import 'package:flutter/widgets.dart';

import 'common/utils/startup.dart';

Future<void> main() async {
  // 这里保持 main 足够干净：只负责把「启动流程」交给 startup.dart
  WidgetsFlutterBinding.ensureInitialized();
  final app = await Startup.createApp();
  runApp(app);
}
