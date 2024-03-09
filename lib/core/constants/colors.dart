import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color(0xff38ABBE);
  static const Color secondary = Color(0xff1F2937);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff374151);
  static const Color red = Color(0xffEF4444);
  static const Color green = Color(0xff22C55E);
  static const Color blue = Color(0xff3B82F6);
  static const Color yellow = Color(0xffEAB308);
  static const Color grey200 = Color(0xffE5E7EB);
  static const Color grey300 = Color(0xffD1D5DB);
  static const Color grey400 = Color(0xff9CA3AF);
  static const Color secondText = Color(0xff999999);
}

/// text style
TextStyle primaryTextStyle = const TextStyle(color: AppColor.primary);
TextStyle secondaryTextStyle = const TextStyle(color: AppColor.secondary);
TextStyle blackTextStyle = const TextStyle(color: AppColor.black);
TextStyle whiteTextStyle = const TextStyle(color: AppColor.white);
TextStyle redTextStyle = const TextStyle(color: AppColor.red);
TextStyle greenTextStyle = const TextStyle(color: AppColor.green);
TextStyle blueTextStyle = const TextStyle(color: AppColor.blue);
TextStyle yellowTextStyle = const TextStyle(color: AppColor.yellow);
TextStyle greyTextStyle = const TextStyle(color: AppColor.grey400);
TextStyle secondTextTextStyle = const TextStyle(color: AppColor.secondText);

/// text weight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
