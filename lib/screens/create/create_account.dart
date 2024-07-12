import 'package:first_flutter_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/styled_button.dart';
import '../../shared/styled_text.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    } else if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  // submit handler
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform the desired action, e.g., submit the data to a server or navigate to another screen
      print('Form is valid');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile created successfully!')),
      );

      // Clear all fields
      _usernameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _confirmPasswordController.clear();
    } else {
      print('Form is not valid');
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle('Profile Creation'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Icon(Icons.code, color: AppColors.primaryColor),
                ),
                const Center(
                  child: StyledHeading('Let\'s get started, rockstar!'),
                ),
                const Center(
                  child: StyledText('Create your profile.'),
                ),
                const SizedBox(height: 30),

                // input for username
                TextFormField(
                  controller: _usernameController,
                  style: GoogleFonts.chakraPetch(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  cursorColor: AppColors.textColor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_2),
                    label: StyledText('Username'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // input for email
                TextFormField(
                  controller: _emailController,
                  style: GoogleFonts.chakraPetch(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  cursorColor: AppColors.textColor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: StyledText('Email'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                // input for password
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  style: GoogleFonts.chakraPetch(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  cursorColor: AppColors.textColor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    label: StyledText('Password'),
                  ),
                  validator: _validatePassword,
                ),
                const SizedBox(height: 20),

                // input to confirm password
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  style: GoogleFonts.chakraPetch(
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  cursorColor: AppColors.textColor,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    label: StyledText('Confirm password'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Confirm password cannot be empty';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),

                // Submit button
                Center(
                  child: StyledButton(
                    onPressed: _submitForm,
                    child: const StyledHeading('Create Profile'),
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
