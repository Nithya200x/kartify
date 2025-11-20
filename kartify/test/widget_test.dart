import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kartify/main.dart';

void main() {
  testWidgets('Kartify App loads with HomePage widgets', (WidgetTester tester) async {
    // Load the app
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Verify the AppBar title
    expect(find.text('Kartify'), findsOneWidget);

    // Verify BottomNavigationBar items
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);

    // Verify labels
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Cart'), findsOneWidget);
  });
}
