import 'package:flutter/material.dart';

/// A data class that contains all [Duration] tokens of the Expressive Design System.
@immutable
class ExpressiveDurations {
  final Duration short1;
  final Duration short2;
  final Duration short3;
  final Duration short4;
  final Duration medium1;
  final Duration medium2;
  final Duration medium3;
  final Duration medium4;
  final Duration long1;
  final Duration long2;
  final Duration long3;
  final Duration long4;
  final Duration extraLong1;
  final Duration extraLong2;
  final Duration extraLong3;
  final Duration extraLong4;

  const ExpressiveDurations({
    this.short1 = const Duration(milliseconds: 50),
    this.short2 = const Duration(milliseconds: 100),
    this.short3 = const Duration(milliseconds: 150),
    this.short4 = const Duration(milliseconds: 200),
    this.medium1 = const Duration(milliseconds: 250),
    this.medium2 = const Duration(milliseconds: 300),
    this.medium3 = const Duration(milliseconds: 350),
    this.medium4 = const Duration(milliseconds: 400),
    this.long1 = const Duration(milliseconds: 450),
    this.long2 = const Duration(milliseconds: 500),
    this.long3 = const Duration(milliseconds: 550),
    this.long4 = const Duration(milliseconds: 600),
    this.extraLong1 = const Duration(milliseconds: 700),
    this.extraLong2 = const Duration(milliseconds: 800),
    this.extraLong3 = const Duration(milliseconds: 900),
    this.extraLong4 = const Duration(milliseconds: 1000),
  });
}

/// A data class that contains all [Curve] tokens of the Expressive Design System.
@immutable
class ExpressiveCurves {
  final Curve fastSpatial;
  final Curve defaultSpatial;
  final Curve slowSpatial;
  final Curve fastEffects;
  final Curve defaultEffects;
  final Curve slowEffects;

  const ExpressiveCurves({
    this.fastSpatial = const Cubic(0.42, 1.67, 0.21, 0.90),
    this.defaultSpatial = const Cubic(0.38, 1.21, 0.22, 1.00),
    this.slowSpatial = const Cubic(0.39, 1.29, 0.35, 0.98),
    this.fastEffects = const Cubic(0.31, 0.94, 0.34, 1.00),
    this.defaultEffects = const Cubic(0.34, 0.80, 0.34, 1.00),
    this.slowEffects = const Cubic(0.34, 0.88, 0.34, 1.00),
  });
}

/// A [ThemeExtension] that bundles the custom motion tokens ([ExpressiveDurations] and [ExpressiveCurves]).
@immutable
class ExpressiveMotionThemeData extends ThemeExtension<ExpressiveMotionThemeData> {
  final ExpressiveDurations durations;
  final ExpressiveCurves curves;

  const ExpressiveMotionThemeData({
    this.durations = const ExpressiveDurations(),
    this.curves = const ExpressiveCurves(),
  });

  @override
  ExpressiveMotionThemeData copyWith({
    ExpressiveDurations? durations,
    ExpressiveCurves? curves,
  }) {
    return ExpressiveMotionThemeData(
      durations: durations ?? this.durations,
      curves: curves ?? this.curves,
    );
  }

  @override
  ThemeExtension<ExpressiveMotionThemeData> lerp(
      ThemeExtension<ExpressiveMotionThemeData>? other, double t) {
    if (other is! ExpressiveMotionThemeData) {
      return this;
    }
    return t < 0.5 ? this : other;
  }
}

/// Practical accessor extension on [ThemeData] to access the [ExpressiveMotionThemeData].
/// Allows the simple syntax: `Theme.of(context).expressiveMotionTheme.curves.fastSpatial`
extension ExpressiveMotionThemeExtension on ThemeData {
  ExpressiveMotionThemeData get expressiveMotionTheme => extension<ExpressiveMotionThemeData>() ?? const ExpressiveMotionThemeData();
}