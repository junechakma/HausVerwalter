import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haus_verwalter/bloc/auth_bloc.dart';
import 'package:haus_verwalter/utils/app_colors.dart';
import 'package:haus_verwalter/utils/app_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }

            if (state is AuthSuccess) {
              Navigator.pushNamed(context, '/dashboard');
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log in to your Account',
                        style: AppStyles.heading,
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Log in to start managing your properties, tenants, and payments.",
                        style: AppStyles.bodyText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'Enter your email address',
                    ),
                    controller: emailController,
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),
                    controller: passwordController,
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(AuthEventLogin(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      ));
                    },
                    style: AppStyles.primaryButton.copyWith(
                      minimumSize: WidgetStateProperty.all(
                        Size(screenWidth, 48),
                      ),
                    ),
                    child: const Text('Log in'),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    style: AppStyles.primaryButtonOutlined.copyWith(
                      minimumSize: WidgetStateProperty.all(
                        Size(screenWidth, 48),
                      ),
                    ),
                    child: const Text('Create an Account'),
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
            );
          },
        ),
      ),
    );
  }
}
