import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  var CuurentLang = "en";

  void changelanguage (String newLanguage)
  {
    if (newLanguage == CuurentLang)
      return;
    else{
      CuurentLang = newLanguage ;
    }
    notifyListeners();

  }
}