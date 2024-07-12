import 'package:first_flutter_app/screens/create/create_account.dart';
import 'package:first_flutter_app/screens/profile/profile_days.dart';
import 'package:first_flutter_app/screens/login/login.dart';
import 'package:first_flutter_app/screens/home/home.dart';
import 'package:first_flutter_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme, // from theme.dart
    home: const Home(),
  ));
}

// dedicated area to test features and widgets
class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: const Text('sandbox')
    );
  }
}

