import 'package:flutter/material.dart';
import 'package:haus_verwalter/screens/dashboard_screen.dart';
import 'package:haus_verwalter/screens/get_started_screen.dart';
import 'package:haus_verwalter/screens/login_screen.dart';
import 'package:haus_verwalter/screens/role_selection_screen.dart';
import 'package:haus_verwalter/screens/signup_screen.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const GetStartedScreen(),
    '/role-selection': (context) => const RoleSelectionScreen(),
    '/login': (context) => const LoginScreen(),
    '/signup': (context) => const SignupScreen(),
    '/dashboard': (context) => const DashboardScreen(),
  };
}
