import 'package:flutter/material.dart';

/// A data class that holds the raw double values for corner radii.
@immutable
class CornerValues {
  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double largeIncreased;
  final double extraLarge;
  final double extraLargeIncreased;
  final double extraExtraLarge;
  final double full;

  const CornerValues({
    this.none = 0.0,
    this.extraSmall = 4.0,
    this.small = 8.0,
    this.medium = 12.0,
    this.large = 16.0,
    this.largeIncreased = 20.0,
    this.extraLarge = 28.0,
    this.extraLargeIncreased = 32.0,
    this.extraExtraLarge = 48.0,
    this.full = 1000000, // A very large value to represent "full" rounding
  });
}

/// A data class that contains ready-to-use [BorderRadius] objects.
@immutable
class ExpressiveBorderRadius {
  final BorderRadius none;
  final BorderRadius extraSmall;
  final BorderRadius small;
  final BorderRadius medium;
  final BorderRadius large;
  final BorderRadius largeIncreased;
  final BorderRadius extraLarge;
  final BorderRadius extraLargeIncreased;
  final BorderRadius extraExtraLarge;
  final BorderRadius full;
  final BorderRadius extraLargeTop;
  final BorderRadius largeTop;
  final BorderRadius largeEnd;
  final BorderRadius largeStart;
  final BorderRadius extraSmallTop;


  /// Erstellt die [BorderRadius]-Objekte aus den bereitgestellten [CornerValues].
  ExpressiveBorderRadius.from(CornerValues values)
      : none = BorderRadius.all(Radius.circular(values.none)),
        extraSmall = BorderRadius.all(Radius.circular(values.extraSmall)),
        small = BorderRadius.all(Radius.circular(values.small)),
        medium = BorderRadius.all(Radius.circular(values.medium)),
        large = BorderRadius.all(Radius.circular(values.large)),
        largeIncreased = BorderRadius.all(Radius.circular(values.largeIncreased)),
        extraLarge = BorderRadius.all(Radius.circular(values.extraLarge)),
        extraLargeIncreased = BorderRadius.all(Radius.circular(values.extraLargeIncreased)),
        extraExtraLarge = BorderRadius.all(Radius.circular(values.extraExtraLarge)),
        full = BorderRadius.all(Radius.circular(values.full)),
        extraLargeTop = BorderRadius.only(
          topLeft: Radius.circular(values.extraLarge),
          topRight: Radius.circular(values.extraLarge),
        ),
        largeTop = BorderRadius.only(
          topLeft: Radius.circular(values.large),
          topRight: Radius.circular(values.large),
        ),
        largeEnd = BorderRadius.only(
          topRight: Radius.circular(values.large),
          bottomRight: Radius.circular(values.large),
        ),
        largeStart = BorderRadius.only(
          topLeft: Radius.circular(values.large),
          bottomLeft: Radius.circular(values.large),
        ),
        extraSmallTop = BorderRadius.only(
          topLeft: Radius.circular(values.extraSmall),
          topRight: Radius.circular(values.extraSmall),
        );
}

/// A [ThemeExtension] that bundles the custom shape tokens of the Expressive Design System.
@immutable
class ShapeThemeData extends ThemeExtension<ShapeThemeData> {
  final CornerValues cornerValues;
  final ExpressiveBorderRadius borderRadius;

  ShapeThemeData({
    CornerValues? cornerValues,
  })  : cornerValues = cornerValues ?? const CornerValues(),
        borderRadius = ExpressiveBorderRadius.from(cornerValues ?? const CornerValues());

  @override
  ShapeThemeData copyWith({
    CornerValues? cornerValues,
  }) {
    return ShapeThemeData(
      cornerValues: cornerValues ?? this.cornerValues,
    );
  }

  /// Merges this style with another.
  ShapeThemeData merge(ShapeThemeData? other) {
    if (other == null) return this;
    return copyWith(
      cornerValues: other.cornerValues,
    );
  }

  @override
  ThemeExtension<ShapeThemeData> lerp(
      ThemeExtension<ShapeThemeData>? other, double t) {
    if (other is! ShapeThemeData) {
      return this;
    }
    return t < 0.5 ? this : other;
  }
}

/// Practical accessor extension on [ThemeData] to access the [ShapeThemeData].
/// Allows the simple syntax: `Theme.of(context).shapeTheme.corner.medium`
extension ExpressiveShapeThemeExtension on ThemeData {
  ShapeThemeData get shapeTheme =>
      extension<ShapeThemeData>() ?? ShapeThemeData();
}

