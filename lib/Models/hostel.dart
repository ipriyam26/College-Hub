class Hostel {
  final String block;
  final int roomNo;
  final int floorNo;
  final String room;

  Hostel({
    required this.block,
    required this.roomNo,
    required this.floorNo,
    required this.room,
  });

  factory Hostel.fromJson(Map<String, dynamic> response) {
    return Hostel(
      block: response['block'],
      roomNo: response['room_no'],
      floorNo: response['floor_no'],
      room: response['room'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'block': block,
      'room_no': roomNo,
      'floor_no': floorNo,
      'room': room,
    };
  }
}
