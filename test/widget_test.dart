import 'package:flutter_test/flutter_test.dart';

import 'package:design_patterns_clean_architecture/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const DesignPatternsApp());

    // Verify that the app title is displayed
    expect(find.text('Users'), findsOneWidget);
  });
}
