import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E8E8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top bar with "log in" text
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'log in',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              
              // White card container
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Header image with "Welcome Back"
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          child: Image.asset(
                            'assets/images/leaf_background.jpg',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 200,
                                color: const Color(0xFF2D5016),
                                child: const Center(
                                  child: Icon(Icons.image, size: 50, color: Colors.white54),
                                ),
                              );
                            },
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.3),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 0,
                          right: 0,
                          child: Text(
                            'Welcome Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    // Form section
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          
                          // Username field
                          TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              hintText: 'User Name',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14,
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF5F5F5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 16),
                          
                          // Password field
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14,
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF5F5F5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 8),
                          
                          // Forget Password link
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                  color: Color(0xFF2D5016),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 16),
                          
                          // Log In button
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle login
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2D5016),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 16),
                          
                          // Sign up link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to sign up
                                },
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: Color(0xFF2D5016),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
```