import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvaliableItems extends StatelessWidget {
  const AvaliableItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'Available items',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: Row(
                children: [
                  const outlet_row(
                    image: 'assets/pngfuel 14.png',
                    text1: 'Sprite Can',
                    text2: '330 ml',
                    text3: '10 avaliable',
                    text4: '60 Rs',
                  ),
                  SizedBox(
                    width: 18.sp,
                  ),
                  const outlet_row(
                    image: 'assets/pngfuel 13.png',
                    text1: 'Diet Coke',
                    text2: '330 ml',
                    text3: '10 avaliable',
                    text4: '60 Rs',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Row(
                children: [
                  const outlet_row(
                    image: 'assets/pngfuel 11.png',
                    text1: 'Coca Cola Can',
                    text2: '330 ml',
                    text3: '10 avaliable',
                    text4: '60 Rs',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const outlet_row(
                    image: 'assets/pngfuel 11.png',
                    text1: 'Coca Cola Can',
                    text2: '330 ml',
                    text3: '10 avaliable',
                    text4: '60 Rs',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Row(
                children: [
                  const outlet_row(
                    image: 'assets/pngfuel 13.png',
                    text1: 'Diet Coke',
                    text2: '330 ml',
                    text3: '10 avaliable',
                    text4: '60 Rs',
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  const outlet_row(
                    image: 'assets/pngfuel 11.png',
                    text1: 'Pepsi Can ',
                    text2: '330 ml',
                    text3: '10 avaliable',
                    text4: '60 Rs',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Padding(
      //   padding: EdgeInsets.symmetric(vertical: 50.sp, horizontal: 20.w),
      //   child: SingleChildScrollView(
      //     child: Padding(
      //       padding: EdgeInsets.all(2.sp),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           const outlet_row(
      //             image: 'assets/pngfuel 14.png',
      //             text1: 'Sprite Can',
      //             text2: '330 ml',
      //             text3: '10 avaliable',
      //             text4: '60 Rs',
      //           ),
      //           SizedBox(
      //             height: 20.h,
      //           ),
      //           Divider(
      //             color: Colors.black,
      //             indent: 5,
      //           ),
      //           const outlet_row(
      //             image: 'assets/pngfuel 13.png',
      //             text1: 'Diet Coke',
      //             text2: '330 ml',
      //             text3: '10 avaliable',
      //             text4: '60 Rs',
      //           ),
      //           SizedBox(
      //             height: 20.h,
      //           ),
      //           Divider(
      //             color: Colors.black,
      //             indent: 5,
      //           ),
      //           const outlet_row(
      //             image: 'assets/pngfuel 11.png',
      //             text1: 'Apple & Grape Juice',
      //             text2: '330 ml',
      //             text3: '10 avaliable',
      //             text4: '60 Rs',
      //           ),
      //           SizedBox(
      //             height: 20.h,
      //           ),
      //           Divider(
      //             color: Colors.black,
      //             indent: 5,
      //           ),
      //           const outlet_row(
      //             image: 'assets/pngfuel 11.png',
      //             text1: 'Coca Cola Can',
      //             text2: '330 ml',
      //             text3: '10 avaliable',
      //             text4: '60 Rs',
      //           ),
      //           SizedBox(
      //             height: 20.h,
      //           ),
      //           Divider(
      //             color: Colors.black,
      //             indent: 5,
      //           ),
      //           const outlet_row(
      //             image: 'assets/pngfuel 11.png',
      //             text1: 'Pepsi Can ',
      //             text2: '330 ml',
      //             text3: '10 avaliable',
      //             text4: '60 Rs',
      //           ),
      //           SizedBox(
      //             height: 20.h,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      //
    );
  }
}

class outlet_row extends StatelessWidget {
  const outlet_row({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.sp)),
        border: Border.all(color: Colors.grey),
      ),
      width: 160.w,
      height: 230.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Text(text2,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20.h,
              ),
              Text(
                text4,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //       color: Colors.white,
    //       borderRadius: BorderRadius.all(Radius.circular(10.sp)),
    //       boxShadow: [
    //         BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 2),
    //       ]),
    //   width: 341.w,
    //   height: 91.h,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Image.asset(image),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(text1,
    //               style: const TextStyle(
    //                   color: Colors.black, fontWeight: FontWeight.bold)),
    //           Text(
    //             text2,
    //             style: const TextStyle(color: Colors.black),
    //           ),
    //           Text(
    //             text3,
    //             style: const TextStyle(color: Colors.black),
    //           ),
    //         ],
    //       ),
    //       Text(
    //         text4,
    //         style: const TextStyle(color: Colors.black),
    //       )
    //     ],
    //   ),
    // );
  }
}
