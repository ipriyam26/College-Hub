import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarPoolCard extends StatelessWidget {
  const CarPoolCard(
      {super.key,
      required this.name,
      required this.destination,
      required this.seatsAvailable,
      required this.profile_url,
      required this.Time,
      required this.Price});

  final String name;
  final String destination;
  final String seatsAvailable;
  final String profile_url;
  final int Price;
  final String Time;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shadowColor: Theme.of(context).disabledColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        height: 104.h,
        color: Theme.of(context).backgroundColor,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10.sp),
              child: CircleAvatar(
                backgroundImage: AssetImage(profile_url),
                radius: 37.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name, style: Theme.of(context).textTheme.headline5),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    destination,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Theme.of(context).disabledColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "$seatsAvailable seats available",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Theme.of(context).disabledColor),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "RS $Price",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(color: Theme.of(context).disabledColor),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    Time,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Theme.of(context).disabledColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
