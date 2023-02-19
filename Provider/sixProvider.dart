// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

class Animations with ChangeNotifier {
  double Height = 100;
  Color color = Colors.grey;
  BorderRadiusGeometry radius = BorderRadius.circular(12);
  double Width = 100;
  void setsatee() {
    final random = Random();
    Height = random.nextInt(300).toDouble();
    Width = random.nextInt(300).toDouble();
    color = Color.fromRGBO(
        random.nextInt(246), random.nextInt(246), random.nextInt(246), 1);
    radius = BorderRadius.circular(random.nextInt(100).toDouble());
    notifyListeners();
  }
}
