import 'package:flutter/material.dart';

class Responsiveness {
  static double calcWidth(double sizeApp, MediaQueryData data) {
    final size = data.size;

    var coefficient = sizeApp / 375;

    return size.width * coefficient;
  }

  static double _cacHeight(double sizeApp, MediaQueryData data) {
    final size = data.size;

    var coefficient = sizeApp / 812;

    return size.height * coefficient;
  }

  static double automatic(double sizeApp, MediaQueryData data) {
    final width = data.size.width;
    final height = data.size.height;

    return width > height
        ? _cacHeight(sizeApp, data)
        : _cacHeight(sizeApp, data);
  }
}
