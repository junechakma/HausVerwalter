import 'package:flutter/material.dart';
import 'package:haus_verwalter/utils/app_styles.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 36),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 300,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: screenWidth * 0.8,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to HausVerwalter",
                    style: AppStyles.title,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Haus Verwalter is a property management app that helps you manage your properties, tenants, and payments.",
                    textAlign: TextAlign.center,
                    style: AppStyles.bodyText,
                  ),
                ],
              ),
            ),
            const Spacer(),
            TextButton(
              style: AppStyles.primaryButton.copyWith(
                minimumSize: WidgetStateProperty.all(
                  Size(screenWidth, 48),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/role-selection');
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
