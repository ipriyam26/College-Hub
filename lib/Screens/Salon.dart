import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Salon extends StatelessWidget {
  const Salon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Salon'),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            salon_item(
              image: 'assets/haircut.png',
              mrp: 'Hair cut',
              type: 'Rs.400',
            ),
            salon_item(
              image: 'assets/Product pic(11).png',
              mrp: 'Waxing',
              type: 'Rs 400',
            ),
            salon_item(
              image: 'assets/Product pic(12).png',
              mrp: 'Make Up',
              type: 'Rs 4599',
            ),
            salon_item(
              image: 'assets/Product pic(12).png',
              mrp: 'Spa',
              type: 'Rs 4599',
            ),
          ],
        ),
      ),
    );
  }
}

class salon_item extends StatelessWidget {
  salon_item({
    required this.image,
    required this.mrp,
    required this.type,
    super.key,
  });

  String image;
  String type;
  String mrp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 220.h,
            width: 160.w,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(0, 0)),
                ],
                borderRadius: BorderRadius.all(Radius.circular(6.sp))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage(image))),
                      height: 160.h,
                      width: 200.w,
                    ),
                    Positioned(
                        left: 120.w,
                        top: 13.h,
                        child: Container(
                          width: 26.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          height: 26.w,
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.sp),
                  child: Column(
                    children: [
                      Text(
                        type,
                        style: const TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        mrp,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Container(
            height: 220.h,
            width: 160.w,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(0, 0)),
                ],
                borderRadius: BorderRadius.all(Radius.circular(6.sp))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6.sp)),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/haircut.png'))),
                      height: 160.h,
                      width: 200.w,
                    ),
                    Positioned(
                        left: 120.w,
                        top: 13.h,
                        child: Container(
                          width: 26.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          height: 26.w,
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.sp),
                  child: Column(
                    children: [
                      const Text(
                        'Hair cut',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const Text(
                        'Rs.400',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
