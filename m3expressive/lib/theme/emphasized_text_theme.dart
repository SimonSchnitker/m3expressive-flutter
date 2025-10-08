import 'package:flutter/material.dart';

/// A [ThemeExtension] to provide the custom "Emphasized" text styles of the Expressive Design System.
@immutable
class EmphasizedTextTheme extends ThemeExtension<EmphasizedTextTheme> {
  final TextStyle? displayLarge;
  final TextStyle? displayMedium;
  final TextStyle? displaySmall;
  final TextStyle? headlineLarge;
  final TextStyle? headlineMedium;
  final TextStyle? headlineSmall;
  final TextStyle? titleLarge;
  final TextStyle? titleMedium;
  final TextStyle? titleSmall;
  final TextStyle? bodyLarge;
  final TextStyle? bodyMedium;
  final TextStyle? bodySmall;
  final TextStyle? labelLarge;
  final TextStyle? labelMedium;
  final TextStyle? labelSmall;

  const EmphasizedTextTheme({
    this.displayLarge = const TextStyle(fontSize: 57, fontWeight: FontWeight.w500, height: 64 / 57, letterSpacing: -0.25),
    this.displayMedium = const TextStyle(fontSize: 45, fontWeight: FontWeight.w500, height: 52 / 45, letterSpacing: 0.0),
    this.displaySmall = const TextStyle(fontSize: 36, fontWeight: FontWeight.w500, height: 44 / 36, letterSpacing: 0.0),
    this.headlineLarge = const TextStyle(fontSize: 32, fontWeight: FontWeight.w500, height: 40 / 32, letterSpacing: 0.0),
    this.headlineMedium = const TextStyle(fontSize: 28, fontWeight: FontWeight.w500, height: 36 / 28, letterSpacing: 0.0),
    this.headlineSmall = const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, height: 32 / 24, letterSpacing: 0.0),
    this.titleLarge = const TextStyle(fontSize: 22, fontWeight: FontWeight.w500, height: 28 / 22, letterSpacing: 0.0),
    this.titleMedium = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 24 / 16, letterSpacing: 0.15),
    this.titleSmall = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 20 / 14, letterSpacing: 0.1),
    this.bodyLarge = const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 24 / 16, letterSpacing: 0.5),
    this.bodyMedium = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 20 / 14, letterSpacing: 0.25),
    this.bodySmall = const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 16 / 12, letterSpacing: 0.4),
    this.labelLarge = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 20 / 14, letterSpacing: 0.1),
    this.labelMedium = const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 16 / 12, letterSpacing: 0.5),
    this.labelSmall = const TextStyle(fontSize: 11, fontWeight: FontWeight.w500, height: 16 / 11, letterSpacing: 0.5),
  });

  /// Merges this style with another.
  EmphasizedTextTheme merge(EmphasizedTextTheme? other) {
    if (other == null) return this;
    return copyWith(
      displayLarge: other.displayLarge,
      displayMedium: other.displayMedium,
      displaySmall: other.displaySmall,
      headlineLarge: other.headlineLarge,
      headlineMedium: other.headlineMedium,
      headlineSmall: other.headlineSmall,
      titleLarge: other.titleLarge,
      titleMedium: other.titleMedium,
      titleSmall: other.titleSmall,
      bodyLarge: other.bodyLarge,
      bodyMedium: other.bodyMedium,
      bodySmall: other.bodySmall,
      labelLarge: other.labelLarge,
      labelMedium: other.labelMedium,
      labelSmall: other.labelSmall,
    );
  }

  @override
  EmphasizedTextTheme copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return EmphasizedTextTheme(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  EmphasizedTextTheme lerp(ThemeExtension<EmphasizedTextTheme>? other, double t) {
    if (other is! EmphasizedTextTheme) {
      return this;
    }
    return EmphasizedTextTheme(
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t),
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t),
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t),
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t),
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t),
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t),
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t),
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t),
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t),
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t),
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t),
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t),
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t),
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t),
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t),
    );
  }
}

/// Practical accessor extension on [ThemeData] to access the [EmphasizedTextTheme].
/// Allows the simple syntax: `Theme.of(context).emphasizedTextTheme.bodyLarge`
extension EmphasizedTypographyThemeExtension on ThemeData {
  EmphasizedTextTheme get emphasizedTextTheme =>
      extension<EmphasizedTextTheme>() ?? const EmphasizedTextTheme();
}

