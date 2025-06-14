import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Full flow: overview, hotel search, favorite, account',
      (WidgetTester tester) async {
    // Launch the app once
    app.main();
    await tester.pumpAndSettle();

    // ✅ Step 1: Verify Overview Tab is Active
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byIcon(Icons.explore), findsOneWidget);

    // ✅ Step 2: Navigate to Hotels Tab
    await tester.tap(find.byIcon(Icons.hotel_outlined));
    await tester.pumpAndSettle();

    // ✅ Step 3: Search for "Holiday"
    final searchField = find.byType(TextField);
    expect(searchField, findsOneWidget);
    await tester.tap(searchField);
    await tester.enterText(searchField, 'Holiday');
    await tester.pumpAndSettle(const Duration(seconds: 2));

    // ✅ Step 4: Verify and Tap Favorite Icon
    expect(find.textContaining('Holiday'), findsAtLeastNWidgets(1));
    final favoriteButton = find.byIcon(Icons.favorite_border).first;
    await tester.tap(favoriteButton);
    await tester.pumpAndSettle();

    // ✅ Step 5: Navigate to Account Tab
    await tester.tap(find.byIcon(Icons.account_circle_outlined));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.account_circle), findsOneWidget);

    // ✅ Step 6: Navigate Back to Overview Tab
    await tester.tap(find.byIcon(Icons.explore_outlined));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.explore), findsOneWidget);
  });
}
