import 'package:flutter/material.dart';
import 'package:moca/ui/core/constants/color.dart';
import 'package:moca/ui/core/constants/style.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColor.mainGreen,
      scaffoldBackgroundColor: AppColor.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: AppColor.white,
        titleTextStyle: AppTextStyle.pageHeadline,
        iconTheme: IconThemeData(color: AppColor.fontDarkGrey),
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyle.searchHeader,
        headlineMedium: AppTextStyle.sectionHeadline,
        headlineSmall: AppTextStyle.pageHeadline,
        titleLarge: AppTextStyle.bodyTextBig,

        bodyLarge: AppTextStyle.bodyTextBig,
        bodyMedium: AppTextStyle.bodyTextSemi,
        bodySmall: AppTextStyle.bodyTextPrimary,

        labelLarge: AppTextStyle.button,
        labelSmall: AppTextStyle.caption,
      ),
      dividerColor: AppColor.lightLineGrey,
      iconTheme: const IconThemeData(color: AppColor.fontDarkGrey, size: 24.0),
    );
  }
}
