import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_workshop_ui_project/main.dart';

void main() {
  testWidgets('Splash page shows BERRY JUICE', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('BERRY JUICE'), findsOneWidget);
    expect(find.text('Explore Now'), findsOneWidget);
  });
}
