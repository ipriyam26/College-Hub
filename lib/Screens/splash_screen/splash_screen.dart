import 'package:college_hub/widgets/splash_screen_widget.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SplashScreenWidget(
              quote: '''Easy service \n booking & scheduling
               ''',
              image_url: "assets/splashscreen1.png",
              index: true,
              controller: _controller,
            ),
            SplashScreenWidget(
              quote:
                  '''Get best in quality \n services and solution to \n every problem
               ''',
              image_url: "assets/splash2.png",
              index: true,
              controller: _controller,
            ),
            SplashScreenWidget(
              quote: '''No waiting or writing \n emails now''',
              image_url: "assets/splash3.png",
              index: false,
              controller: _controller,
            ),
          ],
        )
      ],
    ));
  }
}
