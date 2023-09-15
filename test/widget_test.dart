import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';

void main() {
  testWidgets('Portfolio items smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyPortfolioApp());

    // Verify that our portfolio starts with specific items.
    expect(find.text('Cloud Wars: AWS vs Azure'), findsOneWidget);
    expect(find.text('Optimizing Serverless Architectures'), findsOneWidget);
    // ... add more as per your list

    // Tap an item and trigger a frame (assuming that you'll add navigation).
    await tester.tap(find.text('Cloud Wars: AWS vs Azure'));
    await tester.pump();

    // Verify that tapping an item works (Update this once you add navigation).
    // For now, we're just making sure that tapping doesn't cause any errors.
  });
}
