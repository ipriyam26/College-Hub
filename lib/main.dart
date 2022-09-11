import 'package:college_hub/Screens/Appointment.dart';
import 'package:college_hub/Screens/car_pool.dart';
import 'package:college_hub/Screens/food_outlets/chaiok.dart';
import 'package:college_hub/Screens/food_outlets/food_outlet.dart';
import 'package:college_hub/Screens/TuckShop.dart';

import 'package:college_hub/Screens/cleaning.dart';
import 'package:college_hub/Screens/food_outlets/quench.dart';
import 'package:college_hub/Screens/home.dart';
import 'package:college_hub/Screens/laundry.dart';
import 'package:college_hub/Screens/maintenance.dart';
import 'package:college_hub/Screens/sign_up.dart';
import 'package:college_hub/Screens/splash_screen/splash_screen.dart';
import 'package:college_hub/Screens/time_table.dart';
import 'package:college_hub/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Screens/authentication/login_page.dart';
import 'Screens/avaliable_items.dart';
import 'Screens/splash_screen/mainstart_screen.dart';
import 'Widgets/cleaning_popup_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        //designSize: const Size(360, 720),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, a) {
          return GetMaterialApp(
            theme: Themes.light,
            darkTheme: Themes.dark,
            debugShowCheckedModeBanner: false,
            home: Laundry(),
          );
        });
  }
}
