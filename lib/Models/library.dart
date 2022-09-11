class Library {
  final String orderId;
  final String bookId;
  final String issueNo;
  final DateTime issueDate;
  final DateTime returnDate;

  Library({
    required this.orderId,
    required this.bookId,
    required this.issueNo,
    required this.issueDate,
    required this.returnDate,
  });

  factory Library.fromJson(Map<String, dynamic> response) {
    return Library(
      orderId: response['order_id'],
      bookId: response['book_id'],
      issueNo: response['issue_no'],
      issueDate: DateTime.parse(response['issue_date']),
      returnDate: DateTime.parse(response['return_date']),
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'order_id': orderId,
      'book_id': bookId,
      'issue_no': issueNo,
      'issue_date': issueDate.toIso8601String(),
      'return_date': returnDate.toIso8601String(),
    };
  }
}
