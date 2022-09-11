import 'dart:ui';

import 'package:flutter/material.dart';

class CarPoolData {
  String? name;
  String? location;
  String? seatsAvailable;
  String? profile_url;
  int? Price;
  String? Time;

  CarPoolData(
      {this.name,
      this.location,
      this.Time,
      this.seatsAvailable,
      this.profile_url,
      this.Price});

  factory CarPoolData.fromJson(Map<String, dynamic> json) {
    return CarPoolData(
        location: json['icon'],
        name: json['name'],
        Time: json['Time'],
        seatsAvailable: json['seatsAvailable'],
        profile_url: json['profile_url'],
        Price: json['Price']);
  }
}
