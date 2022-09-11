import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Notifications",
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify1.png',
              parentText: 'Pick your laundry',
              subText: '27 March 2021',
            ),
            SizedBox(
              height: 30.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify2.png',
              parentText: 'Cleaning staff accepted your \nrequest',
              subText: '27 March 2021',
            ),
            SizedBox(
              height: 30.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify3.png',
              parentText: 'Maintenence staff accepted your \nrequest',
              subText: '27 March 2021',
            ),
            SizedBox(
              height: 30.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify4.png',
              parentText: 'Your food is ready. Please pick \nup',
              subText: '27 March 2021',
            ),
            SizedBox(
              height: 30.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify5.png',
              parentText: 'Maintenence staff accepted \nyour request',
              subText: '27 March 2021',
            ),
            SizedBox(
              height: 30.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify6.png',
              parentText: 'Drop Your laundry',
              subText: '27 March 2021',
            ),
            SizedBox(
              height: 30.h,
            ),
            NotifyRow(
              imageUrl: 'assets/notify6.png',
              parentText: 'Your doubt session request is \naccepted',
              subText: '27 March 2021',
            ),
          ],
        ),
      ),
    );
  }
}

class NotifyRow extends StatelessWidget {
  NotifyRow(
      {Key? key,
      required this.imageUrl,
      required this.parentText,
      required this.subText})
      : super(key: key);

  String imageUrl;
  String parentText;
  String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 0.2)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(6.sp))),
      width: 325.w,
      height: 70.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imageUrl),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                parentText,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                subText,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.more_horiz)],
          ),
        ],
      ),
    );
  }
}
