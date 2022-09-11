import 'dart:ui';

import 'package:flutter/material.dart';

class CarPoolData {
  String? name;
  String? location;
  String? seatsAvailable;

  CarPoolData({
    this.name,
    this.location,
    this.seatsAvailable,
  });

  factory CarPoolData.fromJson(Map<String, dynamic> json) {
    return CarPoolData(
      location: json['icon'],
      name: json['name'],
      seatsAvailable: json['seatsAvailable'],
    );
  }
}
