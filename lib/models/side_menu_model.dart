import 'package:flutter/material.dart';

class SideMenuModel {
  SideMenuModel({
    required this.title,
    required this.icon,
    required this.route,
    required this.children,
  });

  final String title;
  final Icon icon;
  final String route;
  final List<SideMenuModel>? children;
}
