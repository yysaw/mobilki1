import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color lightTeal = Color(0xFFC4F1F1);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              const Text(
                'medinow',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: -1.0,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Meditate With Us!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 60),
              CustomButton(
                text: 'Sign in with Apple',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              CustomButton(
                text: 'Continue with Email or Phone',
                backgroundColor: lightTeal,
                textColor: Colors.black,
                onPressed: () {},
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Continue With Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 280,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(
                      Icons.self_improvement,
                      size: 220,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}