import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('app launches successfully', (WidgetTester tester) async {
    // Initialize the app
    app.main();

    // Wait for the app to settle
    await tester.pumpAndSettle();

    // Verify that the app has started and shows the dashboard
    expect(find.byType(MaterialApp), findsOneWidget);

    // ✅ Step 1: Overview tab
    expect(find.byIcon(Icons.explore), findsOneWidget);

    // ✅ Step 2: Hotels tab
    await tester.tap(find.byIcon(Icons.hotel_outlined));
    await tester.pumpAndSettle();

    // ✅ Step 3: Search for "Holiday"
    await tester.enterText(find.byType(TextField), 'Holiday');
    await tester.pumpAndSettle();

    // ✅ Step 4: Verify results and favorite a hotel
    expect(find.textContaining('Holiday'), findsAtLeastNWidgets(1));
    await tester.tap(find.byIcon(Icons.favorite_border).first);

    // ✅ Step 5: Navigate to Account tab
    await tester.tap(find.byIcon(Icons.account_circle_outlined));
    await tester.pumpAndSettle();

    // ✅ Step 6: Return to Overview tab
    await tester.tap(find.byIcon(Icons.explore_outlined));
    await tester.pumpAndSettle();
  });
}
