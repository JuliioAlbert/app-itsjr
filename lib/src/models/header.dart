import 'package:flutter/material.dart';

class Header {
  String area;
  IconData icon;

  Header({
    this.area,
    this.icon,
  });

  Header.fromJsonMap(Map<String, dynamic> json) {
    area = json['area'];
    icon = json['icon'];
  }
}
