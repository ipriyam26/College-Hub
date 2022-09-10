import 'package:college_hub/Screens/food_outlets/kathi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreenPage extends StatefulWidget {
  const IntroScreenPage({Key? key}) : super(key: key);

  @override
  _IntroScreenPageState createState() => _IntroScreenPageState();
}

class _IntroScreenPageState extends State<IntroScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                    bottom: 300,
                    
                  ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                
                
                
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor
                ),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/splashscreen1.png')),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height:400.h,
                  padding:  EdgeInsets.all(25),
                  decoration:  BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Take Care of \nYour Lovely Pet',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 25),
                      
                      
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
                  padding: EdgeInsets.all(25.0.sp),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Skip",
                      style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height),
      radius: size.height - 5,
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}