import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookedPopup extends StatelessWidget {
  const BookedPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 258.w,
          height: 118.h,
          decoration: BoxDecoration(
            color: Colors.white70,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.09),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 7), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(16.sp)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      'Your appointment has been booked  ',
                      style: TextStyle(color: Colors.black, fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Please arrive on time. ',
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
                  ],
                ),
                // child: Text(
                //   'Your laundry has been booked  \n  Collect is on 05-sep-2022',
                //   textAlign: TextAlign.center,
                // ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 24.h,
                width: 89.w,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                child: Center(
                  child: Text(
                    'Okay',
                    style: TextStyle(color: Colors.white, fontSize: 13.sp),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
