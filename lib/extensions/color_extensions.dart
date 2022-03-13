import 'package:flutter/material.dart';

extension ColorExtension on Color {
  double get brightness {
    return (0.299 * (red) + 0.587 * (green) + 0.114 * (blue)) / 2.55;
  }
}
