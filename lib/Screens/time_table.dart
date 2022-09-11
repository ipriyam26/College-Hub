import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:math' as math;


class TimeTable extends StatelessWidget {
  TimeTable({Key? key}) : super(key: key);
  final dummyData = [
    {
      'name': 'Maths',
      'code': 'CSET-363',
      'type': 1,
    },
    {
      'name': 'Maths',
      'code': 'CSET-363',
      'type': 2,
    },
    {
      'name': 'Maths',
      'code': 'CSET-363',
      'type': 1,
    },
    {
      'name': 'Maths',
      'code': 'CSET-363',
      'type': 2,
    },
    {
      'name': 'Maths',
      'code': 'CSET-363',
      'type': 1,
    },
    {
      'name': '',
      'code': '',
      'type': 4,
    },
    {
      'name': 'Maths',
      'code': 'CSET-363',
      'type': 2,
    },
   
   
  
  ];
  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Theme.of(context).dividerColor,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      title: Text(
        'Dates',
        style: Theme.of(context).textTheme.headline4!.apply(
              color: Theme.of(context).dividerColor,
            ),
      ),
    );

    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: appBar2,
        body: SingleChildScrollView(
          child: Column(
            children: [
              calendar(context),
              Container(
                // color: Colors.pink,
                height: 500.h,
                margin: EdgeInsets.only(left: 4.w),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TimeBar(),
                      const CenterLine(),
                      SizedBox(
                        height: 800.h,
                        width: 300.w,
                        // color: Colors.pink,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: dummyData.length,
                          itemBuilder: (context, index) {
                            return Display(
                              code: dummyData[index]['code'] as String,
                              name: dummyData[index]['name'] as String,
                              type: dummyData[index]['type'] as int,
                            );
                          },
                        ),
                      )
                    ]),
              )
            ],
          ),
        ));
  }

  ClipRRect calendar(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10.r),
        bottomRight: Radius.circular(10.r),
      ),
      child: Container(
          color: const Color(0xff22A8B9),
          child: TableCalendar(
            headerStyle: HeaderStyle(
                leftChevronIcon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Theme.of(context).backgroundColor,
                  size: 12,
                ),
                rightChevronIcon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Theme.of(context).backgroundColor,
                  size: 12,
                ),
                titleCentered: true,
                formatButtonVisible: false,
                titleTextStyle: Theme.of(context)
                    .textTheme
                    .overline!
                    .apply(fontSizeDelta: 1, fontWeightDelta: 2)),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: Theme.of(context).textTheme.overline!,
              weekendStyle: Theme.of(context).textTheme.overline!,
            ),
            calendarStyle: CalendarStyle(
              todayTextStyle: Theme.of(context).textTheme.overline!.apply(
                color: Theme.of(context).dividerColor,
              ),
              todayDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color:Theme.of(context).backgroundColor),
                outsideTextStyle: Theme.of(context).textTheme.overline!.apply(
                      color: Colors.white54,
                    ),
                weekendTextStyle: Theme.of(context).textTheme.overline!,
                defaultTextStyle: Theme.of(context).textTheme.overline!),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          )),
    );
  }
}
class Display extends StatelessWidget {
  String? name;
  String? code;
  int? type;
  Display(
      {Key? key, required this.name, required this.code, required this.type})
      : super(key: key);
  Color colloid =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return type == 4
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
            margin: EdgeInsets.only(top: 10.h),
            height: 31.h,
            width: 271.w,
            child: const Text(" "),
          )
        : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              color: colloid.withOpacity(0.3),
            ),
            margin: EdgeInsets.only(top: 10.h),

            padding: EdgeInsets.symmetric(horizontal:11.h),
            height: type == 2 ? 71.h : 40.h,
            width: 271.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      code!,
                      style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,

                        color: colloid,
                      ),
                    ),
                    Text(
                      name!,
                      style: TextStyle(
                        fontFamily: GoogleFonts.montserrat().fontFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: colloid,
                      ),
                    ),
                  ],
                ),
                Text(
                  type == 0
                      ? 'Lecture'
                      : type == 1
                          ? 'Tutorial'
                          : 'Lab',
                  style: TextStyle(
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 13.sp,
                    color: colloid,
                  ),
                )
              ],
            ),
          );
  }
}

class CenterLine extends StatelessWidget {
  const CenterLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const VerticalDivider(
        width: 20,
        thickness: 2,
        color: Colors.grey,
      ),
      Container(
        height: 500.h,
        width: 20.w,
        margin: EdgeInsets.only(top:3.h),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          // padding: EdgeInsets.symmetric(vertical: 14.h),
          itemBuilder: (context, index) {
            return Container(
              height: 8.h,
              width: 8.w,
              margin: EdgeInsets.symmetric(vertical: 17.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              // child: Text(" "),
            );
          },
          itemCount: 11,
        ),
      )
    ]);
  }
}

class TimeBar extends StatelessWidget {
  const TimeBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      width: 48.w,
      margin: EdgeInsets.only(top:4.h),
      // color: Colors.pink,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: 11,
          itemBuilder: (context, index) {
            int tt = (index * 55 + 510);
            String time =
                "${tt ~/ 60 < 10 ? "0" : ""}${tt ~/ 60}:${tt % 60 < 10 ? "0" : ""}${tt % 60}  ";
            return Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              height: 42.h,
              width: 78.w,
              child: Text(
                time,
                style: TextStyle(
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff908F8C)),
              ),
            );
          }),
    );
  }
}
