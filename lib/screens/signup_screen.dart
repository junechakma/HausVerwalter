import 'package:flutter/material.dart';
import 'package:haus_verwalter/utils/app_styles.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 46),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an Account',
                    style: AppStyles.heading,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Sign up to start managing your properties, tenants, and payments.",
                    style: AppStyles.bodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 26),
              const Text(
                'Sign up as a Landlord',
                style: AppStyles.subHeading,
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  hintText: 'Enter your full name',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'Enter your email address',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your password',
                ),
              ),
              const SizedBox(height: 36),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: AppStyles.primaryButton.copyWith(
                    minimumSize:
                        WidgetStateProperty.all(Size(screenWidth, 48))),
                child: const Text('Sign Up'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: AppStyles.primaryButtonOutlined.copyWith(
                    minimumSize: WidgetStateProperty.all(
                  Size(screenWidth, 48),
                )),
                child: const Text('Already have an account? Log in'),
              ),

              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      height: 32,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text('OR'),
                  SizedBox(width: 8),
                  Expanded(
                    child: Divider(
                      height: 32,
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              // google login button
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                style: AppStyles.primaryButtonOutlined.copyWith(
                  minimumSize: WidgetStateProperty.all(
                    Size(screenWidth, 48),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_outlined),
                    SizedBox(width: 8),
                    Text('Log in with Google'),
                  ],
                ),
                // Apple login button
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                style: AppStyles.primaryButtonOutlined.copyWith(
                  minimumSize: WidgetStateProperty.all(
                    Size(screenWidth, 48),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple),
                    SizedBox(width: 8),
                    Text('Log in with Apple'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
