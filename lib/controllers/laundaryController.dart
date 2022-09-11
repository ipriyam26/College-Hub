import 'package:get/get.dart';

import '../models/User.dart';

class UserController extends GetxController {
  final user = User(
      enrollmentNo: 'E20CSE397',
      firstName: 'Jaspreet',
      secondName: 'Singh',
      email: 'E20CSE397@bennett.edu.in',
      password: '3B2XCW@1',
      age: 20,
      gender: true,
      phoneNo: 7985216622);

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    // await updateUser();
    super.onReady();
  }
}
