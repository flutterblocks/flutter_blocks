import 'dart:developer';

import 'package:flutter/material.dart';

// import 'custom_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_theme.dart';

class AcxAppThemeNotifier extends ChangeNotifier {
  init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    int acxAppThemeMode = sharedPreferences.getInt("Acx_app_theme_mode") ??
        AcxAppThemeType.light.index;
    changeAppThemeMode(AcxAppThemeType.values[acxAppThemeMode]);

    // int AcxCustomThemeMode = sharedPreferences.getInt("Acx_custom_theme_mode")??AcxAppThemeType.light.index;
    // changeCustomThemeMode(AcxCustomThemeType.values[AcxCustomThemeMode]);

    notifyListeners();
  }

  changeAppThemeMode(AcxAppThemeType? themeType) async {
    AcxAppTheme.defaultThemeType = themeType!;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt("Acx_app_theme_mode", themeType.index);

    log(AcxAppTheme.getThemeFromThemeMode().toString());
    notifyListeners();
  }

// changeCustomThemeMode(AcxCustomThemeType? themeType) async {
//   AcxCustomTheme.defaultThemeType = themeType!;
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   await sharedPreferences.setInt("Acx_custom_theme_mode", themeType.index);
//
//   notifyListeners();
// }

}
