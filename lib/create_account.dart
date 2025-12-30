import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apartment Design 1',
      theme: ThemeData(
        fontFamily: 'Inter', // Make sure Inter font is available or use default
        primarySwatch: Colors.green,
      ),
      home: const SignUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Leaf Background Image with Welcome Text
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300, // Adjust as needed for visual balance
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/leaf_background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Centered Welcome Text
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white,
                      letterSpacing: 0,
                      height: 1.0, // line-height 100%
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Input Fields
              _buildTextField('Enter your name'),
              const SizedBox(height: 16),
              _buildTextField('Enter your email'),
              const SizedBox(height: 16),
              _buildTextField('Enter your password', obscureText: true),
              const SizedBox(height: 16),
              _buildTextField('Confirm your password', obscureText: true),
              const SizedBox(height: 32),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle create account logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E5D2B), // Dark green
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                        color :Colors.white
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Signup Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Navigate to login or signup
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        color: Color(0xFF1E5D2B), // Green like button
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: const Color(0xFFF5F5F5), // Light gray background
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}