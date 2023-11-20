import 'package:flutter/material.dart';
import 'package:across_europe/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.23),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray400,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray40001 => BoxDecoration(
        color: appTheme.gray40001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray300,
      
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray10000,
            appTheme.gray300,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray300 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.gray100,
            appTheme.gray300,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToDeepPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.whiteA700,
            appTheme.gray300,
            appTheme.deepPurple300,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray200,
        border: Border.all(
          color: appTheme.blueGray40001,
          width: 2.h,
        ),
      );

  // Row decorations
  static BoxDecoration get row1 => BoxDecoration();
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL47 => BorderRadius.vertical(
        top: Radius.circular(47.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
