import 'package:college_hub/Screens/laundry.dart';
import 'package:college_hub/Widgets/select_timing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cleaning extends StatelessWidget {
  Cleaning({Key? key}) : super(key: key);
  final listTiming = [
    '02:30 PM',
    '03:30 PM',
    '04:30 PM',
    '05:30 PM',
    '06:30 PM',
    '07:30 PM',
    '08:30 PM',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          'Cleaning',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 65.sp),
            child: Image.asset('assets/image 52.png'),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabelField(label: "Room Number", width: 125.w, data: "502"),
              LabelField(label: "Block Number", width: 125.w, data: "D1")
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          SelectTiming(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 314.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                  color: const Color(0xFF22A8B9),
                ),
                child: Center(
                  child: Text(
                    'Submit Request',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Theme.of(context).backgroundColor),
                    // style: TextStyle(
                    //   fontSize: 17.sp,
                    //   color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                    // ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container middleMethod(BuildContext context) {
    return Container(
      height: 58.h,
      width: 56.w,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(7.sp)),
          border: Border.all(color: Colors.grey)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sat',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .apply(fontSizeDelta: 5.sp, color: const Color(0xff757575)),
          ),
          SizedBox(
            height: 4.h,
          ),
          const Text(
            '09',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
