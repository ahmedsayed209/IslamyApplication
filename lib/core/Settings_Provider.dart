import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  var CuurentLang = "en";
  ThemeMode currentThemeMode = ThemeMode.light;
  void changelanguage (String newLanguage)
  {
    if (newLanguage == CuurentLang)
      return;
    else{
      CuurentLang = newLanguage ;
    }
    notifyListeners();
  }
  void changeThemeMode (ThemeMode newTheme)
  {
    if (newTheme == currentThemeMode)
      return;
    else{
      currentThemeMode = newTheme ;
    }
    notifyListeners();
  }
  String getHomeBackgroud()
  {
    return currentThemeMode ==ThemeMode.dark ?
    "assets/images/home_dark_background.png" :
    "assets/images/home_bacck.png" ;
  }

  String getSplashBackgroud()
  {
    return currentThemeMode ==ThemeMode.dark ?
    "assets/images/splash _1_background.png" :
    "assets/images/splash_background.png" ;

  }

  bool isDark()
  {
    return currentThemeMode == ThemeMode.dark;
  }
}