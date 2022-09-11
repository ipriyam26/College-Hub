import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SelectTiming extends StatefulWidget {
  SelectTiming({Key? key}) : super(key: key);
  final listTiming = [
    '02:30 PM',
    '03:30 PM',
    '04:30 PM',
    '05:30 PM',
    '06:30 PM',
    '07:30 PM',
    '08:30 PM',
  ];
  final listMin = ['15 min', '30 min', '1 hour'];
  bool quickTime = false;
  @override
  State<SelectTiming> createState() => _SelectTimingState();
}

class _SelectTimingState extends State<SelectTiming> {
  @override
  Widget build(BuildContext context) {
    var selectedDecoration = BoxDecoration(
        color: const Color(0xff5E17EB).withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(7.sp)),
        border: Border.all(color: const Color(0xff5E17EB)));
    var nonSelectedDecoration = BoxDecoration(
        color: Colors.white10.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(7.sp)),
        border: Border.all(color: const Color(0xffE3E3E3)));
    return Padding(
      padding: EdgeInsets.all(10.sp),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select date & time ',
              style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  color: Theme.of(context).dividerColor,
                  fontSize: 16.sp),
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              children: [
                Container(
                  height: 58.h,
                  width: 56.w,
                  decoration: !widget.quickTime
                      ? selectedDecoration
                      : nonSelectedDecoration,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.quickTime = false;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('EEE').format(DateTime.now()).toString(),
                          style: Theme.of(context).textTheme.subtitle1!.apply(
                              fontSizeDelta: 5.sp,
                              color: const Color(0xff757575)),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          '09',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .apply(fontWeightDelta: 2),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.quickTime = true;
                    });
                  },
                  child: Container(
                    height: 58.h,
                    width: 56.w,
                    decoration: widget.quickTime
                        ? selectedDecoration
                        : nonSelectedDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Quick Service',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.subtitle1!.apply(
                              fontSizeFactor: 0.9,
                              color: const Color(0xff757575)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            !widget.quickTime
                ? Wrap(
                    spacing: 14.w,
                    runSpacing: 16.h,
                    children: [
                      ...widget.listTiming.map((e) => Timing(time: e))
                    ],
                  )
                : Wrap(
                    spacing: 14.w,
                    runSpacing: 16.h,
                    children: [...widget.listMin.map((e) => Timing(time: e))],
                  )
          ],
        ),
      ),
    );
  }
}

class Timing extends StatelessWidget {
  const Timing({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 47.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.sp)),
        border: Border.all(color: const Color(0xffE3E3E3)),
      ),
      child: Center(
          child: Text(time, style: Theme.of(context).textTheme.headline6)),
    );
  }
}
