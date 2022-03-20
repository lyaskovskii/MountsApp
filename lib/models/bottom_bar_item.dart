import 'package:flutter/material.dart';

class BottomBarItem {
  IconData? icon;
  bool isSelected;
  String label;

  BottomBarItem({
    this.icon,
    this.isSelected = false,
    this.label = '',
  });
}
