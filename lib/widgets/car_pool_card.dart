import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarPoolCard extends StatelessWidget {
  const CarPoolCard(
      {super.key,
      required this.name,
      required this.destination,
      required this.seatsAvailable,
      required this.profile_url});

  final String name;
  final String destination;
  final String seatsAvailable;
  final String profile_url;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Theme.of(context).disabledColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage(profile_url),
                height: 180.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  seatsAvailable,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Theme.of(context).disabledColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
