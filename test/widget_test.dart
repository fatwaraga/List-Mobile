import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:masuk/main.dart';

void main() {
  testWidgets('Login page widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( MyApp());

    // Verify that the login page contains the necessary widgets.
    expect(find.text('Login Page'), findsOneWidget);
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    // Enter values into the username and password fields.
    await tester.enterText(find.byKey(Key('usernameTextField')), 'testuser');
    await tester.enterText(find.byKey(Key('passwordTextField')), 'testpassword');

    // Tap the 'Login' button and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify that the NextPage is displayed after successful login.
    expect(find.text('Next Page'), findsOneWidget);
    expect(find.text('Welcome, testuser!'), findsOneWidget);
    expect(find.text('Your password: testpassword'), findsOneWidget);
  });
}
