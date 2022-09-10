import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Screens/food_outlets/kathi.dart';
import '../Screens/intro.dart';

class SplashScreenWidget extends StatelessWidget {
  SplashScreenWidget({
    super.key,
    required this.quote,
    required this.image_url,
    
    
  });

  final String quote;
  final String image_url;
  double a = 500.h - 100.h;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                    bottom: 350,
                    
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
                  image: AssetImage(image_url)),
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
                      Text(
                        quote,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      const SizedBox(height: 25),
                      DottedBorder(
   borderType: BorderType.RRect,
   radius: Radius.circular(20),
   dashPattern: [10, 10],
   color: Colors.grey,
   strokeWidth: 2,
   child: Padding(
     padding: const EdgeInsets.all(3.0),
     child: GestureDetector(
       child: Container(
           
           height: 60.h,
           width: 55.w,
     
           
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).highlightColor,
            
           ),
           child: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).backgroundColor,
           
       )),
     ),
   )
                      )
                      
                      
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            child: Padding(
                    padding: EdgeInsets.all(25.0.sp),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Skip",
                        style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
          ),
          
        ],
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