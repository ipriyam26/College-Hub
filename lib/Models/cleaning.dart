class Cleaning {
  final String id;
  final String enrollmentNo;
  final String room;
  final String status;
  final String postedOn;

  Cleaning({
    required this.id,
    required this.enrollmentNo,
    required this.room,
    required this.status,
    required this.postedOn,
  });

  factory Cleaning.fromJson(Map<String, dynamic> json) {
    return Cleaning(
      id: json['id'],
      enrollmentNo: json['enrollment_no'],
      room: json['room'],
      status: json['status'],
      postedOn: json['posted_on'],
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'enrollment_no': enrollmentNo,
        'room': room,
        'status': status,
        'posted_on': postedOn,
      };

}

class CleaningStatus{

  final String id;
  final String status;
  final String postedOn;

  CleaningStatus({
    required this.id,
    required this.status,
    required this.postedOn,
  });

  factory CleaningStatus.fromJson(Map<String, dynamic> json) {
    return CleaningStatus(
      id: json['id'],
      status: json['status'],
      postedOn: json['posted_on'],
    );
  }
  

}
