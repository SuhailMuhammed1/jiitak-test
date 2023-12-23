import 'dart:ui';
import 'package:jiitak/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillRedA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientDeepOrangeToDeepOrangeDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange400.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.29, 2),
          end: Alignment(1.34, 1),
          colors: [
            appTheme.deepOrange400.withOpacity(0.53),
            appTheme.deepOrange10087,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToPrimaryDecoration => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.03, 1),
          end: Alignment(1.2, 0),
          colors: [
            appTheme.yellow80001,
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
