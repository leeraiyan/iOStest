import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.38),
      );
  static get bodySmallBlack900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Display text style
  static get displayMediumInterBlack900 =>
      theme.textTheme.displayMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallInter => theme.textTheme.displaySmall!.inter.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displaySmallRegular => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get displaySmall_1 => theme.textTheme.displaySmall!;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
