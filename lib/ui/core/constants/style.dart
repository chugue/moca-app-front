import 'package:flutter/material.dart';

import 'color.dart';

class AppTextStyle {
  static const String maplestory = 'Maplestory';
  static const String pretendard = 'Pretendard';

  // 제목
  static const TextStyle sectionHeadline = TextStyle(
    fontFamily: maplestory,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle searchHeader = TextStyle(
    fontFamily: maplestory,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle pageHeadline = TextStyle(
    fontFamily: maplestory,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle pointHeadline = TextStyle(
    fontFamily: pretendard,
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle bodyTextPrimary = TextStyle(
    fontFamily: pretendard,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyTextSemi = TextStyle(
    fontFamily: pretendard,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bodyTextBig = TextStyle(
    fontFamily: pretendard,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  // 버튼, 탭
  static const TextStyle button = TextStyle(
    fontFamily: maplestory,
    fontSize: 16.0,
    fontWeight: FontWeight.w800,
  );

  // 캡션
  static const TextStyle caption = TextStyle(
    fontFamily: pretendard,
    fontSize: 10.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle errorMessage = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.red,
  );

  static const TextStyle guideText = TextStyle(
    fontFamily: maplestory,
    fontSize: 23,
    fontWeight: FontWeight.w500,
    color: AppColor.white,
  );
}
