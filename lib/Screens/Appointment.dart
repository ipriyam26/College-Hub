import 'package:college_hub/Widgets/select_timing.dart';
import 'package:college_hub/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import 'cleaning.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Book Appointment',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "July 2022",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(
              width: 350.w,
              height: 369.h,
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.sp),
              child: const Text(
                'Enrollment Number',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.sp),
              child: Container(
                width: 325.w,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.sp),
                      child: const Text(
                        'E20cse384',
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.sp),
              child: const Text(
                'Select Time',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Timing(
                    time: '02:30 PM',
                  ),
                  Timing(
                    time: '02:30 PM',
                  ),
                  Timing(
                    time: '02:30 PM',
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Timing(
                    time: '02:30 PM',
                  ),
                  Timing(
                    time: '02:30 PM',
                  ),
                  Timing(
                    time: '02:30 PM',
                  ),
                ],
              ),
            ),
            const button(text: 'Submit Request')
          ],
        ),
      ),
    );
  }
}
