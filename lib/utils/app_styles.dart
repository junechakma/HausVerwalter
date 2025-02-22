import 'package:flutter/material.dart';
import 'package:haus_verwalter/utils/app_colors.dart';

class AppStyles {
  static const TextStyle title = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static const TextStyle heading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const TextStyle subHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.text,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    color: AppColors.text,
  );

  // Define button styles
  static ButtonStyle primaryButton = TextButton.styleFrom(
    foregroundColor: AppColors.textSecondary,
    backgroundColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
  static ButtonStyle primaryButtonOutlined = TextButton.styleFrom(
    foregroundColor: AppColors.text,
    backgroundColor: Colors.transparent,
    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    side: const BorderSide(color: AppColors.primary),
  ).copyWith(
    overlayColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return AppColors.primary.withOpacity(0.9); // Hover color
        }
        if (states.contains(WidgetState.pressed)) {
          return AppColors.primary; // Pressed color
        }
        return null; // Default color
      },
    ),
    foregroundColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return Colors.white; // Foreground color on hover
        }
        return AppColors.text; // Default foreground color
      },
    ),
    side: WidgetStateProperty.resolveWith<BorderSide?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) {
          return BorderSide.none; // No border on hover
        }
        return const BorderSide(color: AppColors.primary); // Default border
      },
    ),
  );
}
