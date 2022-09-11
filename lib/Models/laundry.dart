class Laundry {
  final int itemCount;
  final int tshirt;
  final int shorts;
  final int cardigans;
  final int dress;
  final int others;
  final String orderId;
  final String enrollmentNo;

  Laundry({
    required this.itemCount,
    required this.tshirt,
    required this.shorts,
    required this.cardigans,
    required this.dress,
    required this.others,
    required this.orderId,
    required this.enrollmentNo,
  });

  factory Laundry.fromJson(Map<String, dynamic> json) {
    return Laundry(
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
