import 'package:first_flutter_app/shared/styled_button.dart';
import 'package:flutter/material.dart';

import '../../shared/styled_text.dart';
import 'package:first_flutter_app/theme.dart';

import '../create/create_account.dart';
import '../home/home.dart'; // Import the Profile screen

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform the desired action, e.g., submit the data to a server or navigate to another screen
      print('Form is valid');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login successful!')),
      );

      // Navigate to Profile screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    } else {
      print('Form is not valid');
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Image above icon
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/login/login_logo.jpg',
                    height: 160,
                    width: 160,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Icon(Icons.code, color: AppColors.primaryColor),
                ),
                const Center(
                  child: StyledHeading('Welcome, superstar!'),
                ),
                const Center(
                  child: StyledText('Enter your credentials.'),
                ),
                const SizedBox(height: 30),

                // input for username
                TextFormField(
                  controller: _usernameController,
                  style: Theme.of(context).textTheme.bodyMedium,
                  cursorColor: AppColors.textColor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_2),
                    label: StyledText('Username'),
                  ),
                  validator: _validateUsername,
                ),
                const SizedBox(height: 20),

                // input for password
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  style: Theme.of(context).textTheme.bodyMedium,
                  cursorColor: AppColors.textColor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    label: StyledText('Password'),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 30),

                // Submit button
                Center(
                  child: StyledButton(
                    onPressed: _submitForm,
                    child: const StyledHeading('Login'),
                  ),
                ),

                const SizedBox(height: 10),

                // create account
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Create()),
                    );
                  },
                  child: const Center(
                    child: StyledHeading('Need to create an account?'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
