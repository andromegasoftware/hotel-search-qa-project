import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../lib/main.dart' as app;
import '../lib/features/hotels/presentation/widgets/hotel_card.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Navigation Flow', () {
    testWidgets('Verify initial overview tab', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify MaterialApp is present
      expect(find.byType(MaterialApp), findsOneWidget);

      // Verify overview tab is selected
      expect(find.byIcon(Icons.explore), findsOneWidget);
    });

    testWidgets('Add hotel to favorites and verify',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Navigate to hotels tab
      await tester.tap(find.byIcon(Icons.hotel_outlined));
      await tester.pumpAndSettle();

      // Find and tap search field
      final searchField = find.byType(TextField);
      expect(searchField, findsOneWidget);
      // Find and tap search field
      await tester.tap(searchField);
      await tester.pumpAndSettle();

      // Enter search text
      await tester.enterText(searchField, 'Holiday');
      await tester.pumpAndSettle();

      // Verify results
      // Wait for search results to load
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // Verify hotel details are visible
      expect(find.textContaining('Holiday'), findsAtLeastNWidgets(1));
      await tester.pumpAndSettle();

      // Find and tap favorite button on first hotel
      final favoriteButton = find.byIcon(Icons.favorite_border).first;
      await tester.tap(favoriteButton);
      await tester.pumpAndSettle();
    });

    testWidgets('Navigate to account and back to overview',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Navigate to account tab
      await tester.tap(find.byIcon(Icons.account_circle_outlined));
      await tester.pumpAndSettle();

      // Verify account tab is selected
      expect(find.byIcon(Icons.account_circle), findsOneWidget);

      // Navigate back to overview
      await tester.tap(find.byIcon(Icons.explore_outlined));
      await tester.pumpAndSettle();

      // Verify overview tab is selected
      expect(find.byIcon(Icons.explore), findsOneWidget);
    });
  });
}
