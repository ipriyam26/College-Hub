import 'package:college_hub/Screens/authentication/login_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenWidget extends StatelessWidget {
  SplashScreenWidget({
    super.key,
    required this.quote,
    required this.image_url,
    required this.index,
    required this.controller,
  });

  final String quote;
  final String image_url;
  final bool index;
  final PageController controller;
  double a = 500.h - 100.h;

  void nextPage() {
    controller.animateToPage(controller.page!.toInt() + 1,
        duration: Duration(milliseconds: 400), curve: Curves.easeIn);
  }

  void lastPage() {
    controller.animateToPage(3,
        duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).highlightColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 345.h,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Theme.of(context).highlightColor),
                child: Image(fit: BoxFit.cover, image: AssetImage(image_url)),
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
                  height: 400.h,
                  padding: EdgeInsets.all(25.sp),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(quote,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold)),
                      SizedBox(height: 30.h),
                      SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: ExpandingDotsEffect(
                            activeDotColor: Color(0xff22A8B9),
                            dotColor: Color(0xff22A8B9),
                            dotHeight: 7.h,
                            dotWidth: 7.w),
                      ),
                      SizedBox(height: 50.h),
                      if (index) ...[
                        DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(20),
                            dashPattern: [10, 10],
                            color: Colors.grey,
                            strokeWidth: 2,
                            child: Padding(
                              padding: EdgeInsets.all(3.0.sp),
                              child: GestureDetector(
                                onTap: nextPage,
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
                            ))
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(LoginPage());
            },
            child: Padding(
              padding: EdgeInsets.all(25.0.sp),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Skip",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
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
