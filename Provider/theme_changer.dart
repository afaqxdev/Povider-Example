import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeSelect with ChangeNotifier {
  var thememode = ThemeMode.light;
  ThemeMode get theme => thememode;

  void setTheme(theme) {
    thememode = theme;
    notifyListeners();
  }
}
