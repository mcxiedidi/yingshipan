// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:yingshipan/common/utils/startup.dart';

void main() {
  testWidgets('App boots to IndexPage with bottom navigation',
      (WidgetTester tester) async {
    final app = await Startup.createApp();
    await tester.pumpWidget(app);
    await tester.pumpAndSettle();

    // 默认进入首页 tab
    expect(find.text('首页'), findsWidgets);
    expect(find.text('资源库'), findsOneWidget);
    expect(find.text('我的'), findsOneWidget);
  });
}
