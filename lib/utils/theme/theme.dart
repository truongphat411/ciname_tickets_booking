import 'package:ciname_tickets_booking/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData.light().copyWith(
      extensions: <ThemeExtension<dynamic>>{const AppColors.light()},);

