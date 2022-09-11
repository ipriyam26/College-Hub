class LaundryPost {
  final int itemCount;
  final int tshirt;
  final int shorts;
  final int cardigans;
  final int dress;
  final int others;
  final String orderId;
  final String enrollmentNo;

  LaundryPost({
    required this.itemCount,
    required this.tshirt,
    required this.shorts,
    required this.cardigans,
    required this.dress,
    required this.others,
    required this.orderId,
    required this.enrollmentNo,
  });

  factory LaundryPost.fromJson(Map<String, dynamic> json) {
    return LaundryPost(
      itemCount: json['item_count'],
      tshirt: json['tshirt'],
      shorts: json['shorts'],
      cardigans: json['cardigans'],
      dress: json['dress'],
      others: json['others'],
      orderId: json['order_id'], 
      enrollmentNo: json['enrollment_no'],
    );
  }

  Map<String, dynamic> toJson() => {
        'itemCount': itemCount,
        'tshirt': tshirt,
        'shorts': shorts,
        'cardigans': cardigans,
        'dress': dress,
        'others': others,
        'order_id': orderId,
        'enrollment_no': enrollmentNo,
      };
}
class LaundryStatus{
  final String status;
  final String orderId;
  final String enrollmentNo;

  LaundryStatus({
    required this.status,
    required this.orderId,
    required this.enrollmentNo,
  });

  factory LaundryStatus.fromJson(Map<String, dynamic> json) {
    return LaundryStatus(
      status: json['status'],
      orderId: json['order_id'], 
      enrollmentNo: json['enrollment_no'],
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'order_id': orderId,
        'enrollment_no': enrollmentNo,
      };
}