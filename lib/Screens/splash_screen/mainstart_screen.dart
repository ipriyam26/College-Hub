import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:college_hub/Screens/authentication/login_page.dart';
import 'package:college_hub/Screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({super.key});

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashMain> with AfterLayoutMixin<SplashMain> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Splash1()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading...'),
      ),
    );
  }
}
