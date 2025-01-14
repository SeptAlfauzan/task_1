import 'package:flutter/material.dart';
import 'package:task_1/src/ui/colors.dart';

final appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.green),
  useMaterial3: true,
  navigationBarTheme: NavigationBarThemeData(
    indicatorColor: Colors.transparent,
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
      (Set<WidgetState> states) => states.contains(WidgetState.selected)
          ? TextStyle(color: AppColors.green)
          : TextStyle(color: AppColors.grey),
    ),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
      (Set<WidgetState> states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: AppColors.green)
          : IconThemeData(color: AppColors.grey),
    ),
  ),
);
