import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineMediumGray400 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray400,
      );
  // Label text style
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90023 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
      );
  static get titleLargeBlack90023_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
      );
  static get titleLargeBlack900Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900Bold23 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBluegray40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
