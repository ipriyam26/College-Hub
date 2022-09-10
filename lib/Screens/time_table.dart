import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timelines/timelines.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({Key? key}) : super(key: key);

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
        body: Column(
          children: [
            calendar(context),
            
          ],
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
