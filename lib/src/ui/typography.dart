import 'package:flutter/widgets.dart';
import 'package:task_1/src/ui/colors.dart';

class AppTypography {
  static TextStyle header =
      const TextStyle(fontWeight: FontWeight.w600, fontSize: 16);
  static TextStyle bannerHeader = header.copyWith(color: AppColors.white);
  static TextStyle subtitle =
      const TextStyle(fontWeight: FontWeight.w600, fontSize: 14);
  static TextStyle caption = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.grey);
}
