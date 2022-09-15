import 'dart:ffi';

class CarPool {
  final String name;
  final String destination;
  final int cost;
  final DateTime departureTime;
  final Long contactNumber;
  final int seatsAvailable;
  final String userImage;
  final int totalSeats;

  CarPool({
    required this.name,
    required this.destination,
    required this.cost,
    required this.departureTime,
    required this.contactNumber,
    required this.seatsAvailable,
    required this.userImage,
    required this.totalSeats,
  });

  factory CarPool.fromJson(Map<String, dynamic> json) {
    return CarPool(
      name: json['name'],
      destination: json['destination'],
      cost: json['cost'],
      departureTime: json['departure_time'],
      contactNumber: json['contact_no'],
      seatsAvailable: json['curr_people'],
      userImage: json['user_image'],
      totalSeats: json['max_people'],
    );
  }
}
