import 'package:college_hub/Screens/cleaning.dart';
import 'package:college_hub/Screens/maintenance.dart';
import 'package:college_hub/Screens/sign_up.dart';
import 'package:college_hub/Screens/time_table.dart';
import 'package:college_hub/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Screens/authentication/login_page.dart';
import 'Screens/splash_screen/mainstart_screen.dart';

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
            home: MaintenanceScreen(),
          );
        });
  }
}
