import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        onDone: () {},
        pages: [PageViewModel(title: 'Easy service booking & scheduling')],
        done: const Text(
          'Read',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
