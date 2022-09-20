class User {
  final String enrollmentNo;
  final String firstName;
  final String secondName;
  final String email;
  final String password;
  final int age;
  final bool gender;
  final int phoneNo;

  User({
    required this.enrollmentNo,
    required this.firstName,
    required this.secondName,
    required this.email,
    required this.password,
    required this.age,
    required this.gender,
    required this.phoneNo,
  });

  factory User.fromJson(Map<String, dynamic> response) {
    return User(
      enrollmentNo: response['enrollment_no'],
      firstName: response['first_name'],
      secondName: response['second_name'],
      email: response['email'],
      password: response['password'],
      age: response['age'],
      gender: response['gender'],
      phoneNo: response['phone_no'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'enrollment_no': enrollmentNo,
      'first_name': firstName,
      'second_name': secondName,
      'email': email,
      'password': password,
      'age': age,
      'gender': gender,
      'phoneNo': phoneNo,
    };
  }
}
