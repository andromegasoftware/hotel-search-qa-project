import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:hotel_search/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('App starts and shows main screen', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text('Search Hotels'),
        findsOneWidget); // update this to match actual text in app
  });
}
