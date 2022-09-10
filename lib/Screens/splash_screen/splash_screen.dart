import 'package:college_hub/widgets/foodlist_bar.dart';
import 'package:college_hub/widgets/splash_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {

  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              // SplashScreenWidget(quote: '''No waiting or writing /n emails now
              //  ''', image_url: "assets/splash3.png"),
              SplashScreenWidget(quote: '''Get best in quality \n services and solution to \n every problem
               ''', image_url: "assets/splash2.png"),
              SplashScreenWidget(quote: '''Easy service \n booking & scheduling
               ''', image_url: "assets/splash2.png"),
              
              
              
            ],
          )
        ],
      )
    );
  }
}