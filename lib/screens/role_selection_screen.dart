import 'package:flutter/material.dart';
import 'package:haus_verwalter/utils/app_styles.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/role.png',
                height: 300,
              ),
            ),
            const Spacer(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Haus Verwalter',
                  style: AppStyles.heading,
                ),
                SizedBox(height: 16),
                Text(
                  "You can use this app to manage your properties, tenants, and payments.",
                  style: AppStyles.bodyText,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Text(
              'What best describes you?',
              style: AppStyles.subHeading,
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: AppStyles.primaryButton.copyWith(
                  minimumSize: WidgetStateProperty.all(Size(screenWidth, 48))),
              child: const Text('I am a Landlord'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: AppStyles.primaryButtonOutlined.copyWith(
                  minimumSize: WidgetStateProperty.all(
                Size(screenWidth, 48),
              )),
              child: const Text('I am a Tenant'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
