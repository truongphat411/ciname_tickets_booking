import 'package:ciname_tickets_booking/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

extension ThemeDataExt on ThemeData {
  AppColors get appColors => extension<AppColors>()!;
}
