import 'package:flutter/material.dart';

enum ShadowPosition {
  topLeft,
  top,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottom,
  bottomRight
}

class AcxShadow {
   int alpha = 0;
  double elevation = 0, spreadRadius = 0, blurRadius = 0;
  Offset? offset;
  ShadowPosition? position;
  Color? color;
  bool? darkShadow;

  FxShadow(
      {double elevation = 8,
      double? spreadRadius = 8 * 0.125,
      double? blurRadius = 16,
      Offset? offset,
      ShadowPosition position = ShadowPosition.bottom,
      int alpha = 0,
      Color? color,
      bool darkShadow = false}) {
    this.spreadRadius = spreadRadius ?? elevation * 0.125;
    this.blurRadius = blurRadius ?? elevation * 2;
    this.alpha = alpha != null ? alpha : (darkShadow ? 100 : 36);
    this.elevation = elevation;
    this.offset = offset;
    this.position = position;
    this.color = color;
    this.darkShadow = darkShadow;

    if (offset == null) {
      switch (position) {
        case ShadowPosition.topLeft:
          this.offset = Offset(-elevation, -elevation);
          break;
        case ShadowPosition.top:
          this.offset = Offset(0, -elevation);
          break;
        case ShadowPosition.topRight:
          this.offset = Offset(elevation, -elevation);
          break;
        //TODO: Shadow problem
        case ShadowPosition.centerLeft:
          this.offset = Offset(-elevation, elevation * 0.25);
          break;
        case ShadowPosition.center:
          this.offset = Offset(0, 0);
          break;
        //TODO: Shadow problem
        case ShadowPosition.centerRight:
          this.offset = Offset(elevation, elevation * 0.25);
          break;
        case ShadowPosition.bottomLeft:
          this.offset = Offset(-elevation, elevation);
          break;
        case ShadowPosition.bottom:
          this.offset = Offset(0, elevation);
          break;
        case ShadowPosition.bottomRight:
          this.offset = Offset(elevation, elevation);
          break;
      }
    }
  }

  @override
  String toString() {
    return 'FxShadow{alpha: $alpha, elevation: $elevation, spreadRadius: $spreadRadius, blurRadius: $blurRadius, offset: $offset, position: $position, color: $color, darkShadow: $darkShadow}';
  }
}
