// main.dart
import 'package:flutter/material.dart';
import 'package:masuk/pages/next_page.dart'; // Sesuaikan dengan nama proyek Anda

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              key: Key('usernameTextField'),
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              key: Key('passwordTextField'),
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Get the entered values
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Navigate to the NextPage with entered values
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage(
                      username: username,
                      password: password,
                    ),
                  ),
                );

                // Clear the username and password fields
                _usernameController.clear();
                _passwordController.clear();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
