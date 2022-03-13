import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

enum AcxTextType {
  h4,
  h5,
  h6,
  sh1,
  sh2,
  button,
  caption,
  overline,

  // Material Design 3
  d1,
  d2,
  d3,
  h1,
  h2,
  h3,
  t1,
  t2,
  t3,
  l1,
  l2,
  l3,
  b1,
  b2,
  b3
}

class AcxTextStyle {
  static Function _fontFamily = GoogleFonts.ibmPlexSans;

  static Map<int, FontWeight> _defaultFontWeight = {
    100: FontWeight.w100,
    200: FontWeight.w200,
    300: FontWeight.w300,
    400: FontWeight.w300,
    500: FontWeight.w400,
    600: FontWeight.w500,
    700: FontWeight.w600,
    800: FontWeight.w700,
    900: FontWeight.w800,
  };

  static Map<AcxTextType, double> _defaultTextSize = {
    AcxTextType.h4: 36,
    AcxTextType.h5: 25,
    AcxTextType.h6: 21,
    AcxTextType.sh1: 17,
    AcxTextType.sh2: 15,
    AcxTextType.button: 13,
    AcxTextType.caption: 12,
    AcxTextType.overline: 10,

    // Material Design 3

    AcxTextType.d1: 57,
    AcxTextType.d2: 45,
    AcxTextType.d3: 36,

    AcxTextType.h1: 32,
    AcxTextType.h2: 28,
    AcxTextType.h3: 26,

    AcxTextType.t1: 22,
    AcxTextType.t2: 16,
    AcxTextType.t3: 14,

    AcxTextType.l1: 14,
    AcxTextType.l2: 12,
    AcxTextType.l3: 11,

    AcxTextType.b1: 16,
    AcxTextType.b2: 14,
    AcxTextType.b3: 12,
  };

  static Map<AcxTextType, int> _defaultTextFontWeight = {
    // Material Design 2 (Old)
    AcxTextType.h4: 500,
    AcxTextType.h5: 500,
    AcxTextType.h6: 500,
    AcxTextType.sh1: 500,
    AcxTextType.sh2: 500,
    AcxTextType.button: 500,
    AcxTextType.caption: 500,
    AcxTextType.overline: 500,

    //Material Design 3

    AcxTextType.d1: 500,
    AcxTextType.d2: 500,
    AcxTextType.d3: 500,

    AcxTextType.h1: 500,
    AcxTextType.h2: 500,
    AcxTextType.h3: 500,

    AcxTextType.t1: 500,
    AcxTextType.t2: 500,
    AcxTextType.t3: 500,

    AcxTextType.l1: 600,
    AcxTextType.l2: 600,
    AcxTextType.l3: 600,

    AcxTextType.b1: 500,
    AcxTextType.b2: 500,
    AcxTextType.b3: 500,
  };

  static Map<AcxTextType, double> _defaultLetterSpacing = {
    AcxTextType.h4: 0,
    AcxTextType.h5: 0,
    AcxTextType.h6: 0,
    AcxTextType.sh1: 0.15,
    AcxTextType.sh2: 0.15,
    AcxTextType.button: 0.15,
    AcxTextType.caption: 0.15,
    AcxTextType.overline: 0.15,

    //Material Design 3
    AcxTextType.d1: -0.25,
    AcxTextType.d2: 0,
    AcxTextType.d3: 0,

    AcxTextType.h1: -0.2,
    AcxTextType.h2: -0.15,
    AcxTextType.h3: 0,

    AcxTextType.t1: 0,
    AcxTextType.t2: 0.1,
    AcxTextType.t3: 0.1,

    AcxTextType.l1: 0.1,
    AcxTextType.l2: 0.5,
    AcxTextType.l3: 0.5,

    AcxTextType.b1: 0.5,
    AcxTextType.b2: 0.25,
    AcxTextType.b3: 0.4,
  };

  static TextStyle getStyle(
      {TextStyle? textStyle,
      int? fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize ?? textStyle!.fontSize;

    Color? finalColor;
    if (color == null) {
      Color themeColor =
          AcxAppTheme.getThemeFromThemeMode().colorScheme.onBackground;
      finalColor = xMuted
          ? themeColor.withAlpha(160)
          : (muted ? themeColor.withAlpha(200) : themeColor);
    } else {
      finalColor = xMuted
          ? color.withAlpha(160)
          : (muted ? color.withAlpha(200) : color);
    }

    return _fontFamily(
        fontSize: finalFontSize,
        fontWeight: _defaultFontWeight[fontWeight] ?? FontWeight.w400,
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  static TextStyle h4(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.h4],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.h4] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h5(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.h5],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.h5] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h6(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.h6],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.h6] ?? 0,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle sh1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.sh1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.sh1] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle sh2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.sh2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.sh2] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle button(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.button],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.button] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle caption(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing = 0,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.caption],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.caption] ?? 0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle overline(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.overline],
        color: color,
        height: height,
        muted: muted,
        letterSpacing: letterSpacing ??
            _defaultLetterSpacing[AcxTextType.overline] ??
            0.15,
        fontWeight: fontWeight,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  // Material Design 3
  static TextStyle d1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.d1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.d1] ?? -0.2,
        fontWeight: _defaultTextFontWeight[AcxTextType.d1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle d2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.d2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.d2] ?? -0.2,
        fontWeight: _defaultTextFontWeight[AcxTextType.d2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle d3(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.d3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.d3] ?? -0.2,
        fontWeight: _defaultTextFontWeight[AcxTextType.d3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.h1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.h1] ?? -0.2,
        fontWeight: _defaultTextFontWeight[AcxTextType.h1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.h2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.h2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.h2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle h3(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.h3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.h3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.h3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle t1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.t1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.t1] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.t1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle t2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.t2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.t2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.t2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle t3(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.t3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.t3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.t3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle l1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.l1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.l1] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.l1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle l2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.l2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.l2] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.l2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle l3(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.l3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.l3] ?? -0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.l3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b1(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.b1],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.b1] ?? 0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.b1] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b2(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.b2],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.b2] ?? 0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.b2] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static TextStyle b3(
      {TextStyle? textStyle,
      int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double? letterSpacing,
      Color? color,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    return getStyle(
        fontSize: fontSize ?? _defaultTextSize[AcxTextType.b3],
        color: color,
        height: height,
        muted: muted,
        letterSpacing:
            letterSpacing ?? _defaultLetterSpacing[AcxTextType.b3] ?? 0.15,
        fontWeight: _defaultTextFontWeight[AcxTextType.b3] ?? 500,
        decoration: decoration,
        textStyle: textStyle,
        wordSpacing: wordSpacing,
        xMuted: xMuted);
  }

  static void changeFontFamily(Function fontFamily) {
    AcxTextStyle._fontFamily = fontFamily;
  }

  static void changeDefaultFontWeight(Map<int, FontWeight> defaultFontWeight) {
    AcxTextStyle._defaultFontWeight = defaultFontWeight;
  }

  static void changeDefaultTextSize(Map<AcxTextType, double> defaultTextSize) {
    AcxTextStyle._defaultTextSize = defaultTextSize;
  }

  static Map<AcxTextType, double> get defaultTextSize => _defaultTextSize;

  static Map<AcxTextType, double> get defaultLetterSpacing =>
      _defaultLetterSpacing;

  static Map<AcxTextType, int> get defaultTextFontWeight =>
      _defaultTextFontWeight;

  static Map<int, FontWeight> get defaultFontWeight => _defaultFontWeight;

  //-------------------Reset Font Styles---------------------------------
  static resetFontStyles() {
    _fontFamily = GoogleFonts.ibmPlexSans;

    _defaultFontWeight = {
      100: FontWeight.w100,
      200: FontWeight.w200,
      300: FontWeight.w300,
      400: FontWeight.w300,
      500: FontWeight.w400,
      600: FontWeight.w500,
      700: FontWeight.w600,
      800: FontWeight.w700,
      900: FontWeight.w800,
    };

    _defaultTextSize = {
      AcxTextType.h4: 36,
      AcxTextType.h5: 25,
      AcxTextType.h6: 21,
      AcxTextType.sh1: 17,
      AcxTextType.sh2: 15,
      AcxTextType.button: 13,
      AcxTextType.caption: 12,
      AcxTextType.overline: 10,

      // Material Design 3

      AcxTextType.d1: 57,
      AcxTextType.d2: 45,
      AcxTextType.d3: 36,

      AcxTextType.h1: 32,
      AcxTextType.h2: 28,
      AcxTextType.h3: 26,

      AcxTextType.t1: 22,
      AcxTextType.t2: 16,
      AcxTextType.t3: 14,

      AcxTextType.l1: 14,
      AcxTextType.l2: 12,
      AcxTextType.l3: 11,

      AcxTextType.b1: 16,
      AcxTextType.b2: 14,
      AcxTextType.b3: 12,
    };

    _defaultTextFontWeight = {
      // Material Design 2 (Old)
      AcxTextType.h4: 500,
      AcxTextType.h5: 500,
      AcxTextType.h6: 500,
      AcxTextType.sh1: 500,
      AcxTextType.sh2: 500,
      AcxTextType.button: 500,
      AcxTextType.caption: 500,
      AcxTextType.overline: 500,

      //Material Design 3

      AcxTextType.d1: 500,
      AcxTextType.d2: 500,
      AcxTextType.d3: 500,

      AcxTextType.h1: 500,
      AcxTextType.h2: 500,
      AcxTextType.h3: 500,

      AcxTextType.t1: 500,
      AcxTextType.t2: 500,
      AcxTextType.t3: 500,

      AcxTextType.l1: 600,
      AcxTextType.l2: 600,
      AcxTextType.l3: 600,

      AcxTextType.b1: 500,
      AcxTextType.b2: 500,
      AcxTextType.b3: 500,
    };

    _defaultLetterSpacing = {
      AcxTextType.h4: 0,
      AcxTextType.h5: 0,
      AcxTextType.h6: 0,
      AcxTextType.sh1: 0.15,
      AcxTextType.sh2: 0.15,
      AcxTextType.button: 0.15,
      AcxTextType.caption: 0.15,
      AcxTextType.overline: 0.15,

      //Material Design 3
      AcxTextType.d1: -0.25,
      AcxTextType.d2: 0,
      AcxTextType.d3: 0,

      AcxTextType.h1: -0.2,
      AcxTextType.h2: -0.15,
      AcxTextType.h3: 0,

      AcxTextType.t1: 0,
      AcxTextType.t2: 0.1,
      AcxTextType.t3: 0.1,

      AcxTextType.l1: 0.1,
      AcxTextType.l2: 0.5,
      AcxTextType.l3: 0.5,

      AcxTextType.b1: 0.5,
      AcxTextType.b2: 0.25,
      AcxTextType.b3: 0.4,
    };
  }
}
