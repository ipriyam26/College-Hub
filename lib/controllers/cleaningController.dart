import 'package:college_hub/Screens/cleaning.dart';
import 'package:get/get.dart';

import '../models/User.dart';

class UserController extends GetxController {
  final user = Cleaning();

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
