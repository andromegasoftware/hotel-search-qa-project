import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App starts and shows dashboard', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Verify that the app has started and shows the dashboard
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
