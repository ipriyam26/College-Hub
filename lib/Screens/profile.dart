import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.edit,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.sp,
                backgroundImage: AssetImage('assets/image.png'),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Priyam Shrivastava',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Email Id'),
                        SizedBox(
                          height: 4.w,
                        ),
                        Text('E20cse397@bennett.edu.in'),
                      ],
                    ),
                    height: 65.h,
                    width: 326.w,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              profile_row(
                text: 'Change Password',
                icon: (Icons.account_circle),
              ),
              SizedBox(
                height: 30.h,
              ),
              profile_row(
                text: 'Room Number',
                icon: (Icons.home),
              ),
              SizedBox(
                height: 30.h,
              ),
              profile_row(
                text: 'Laundry Bag Number',
                icon: (Icons.shopping_bag_outlined),
              ),
              SizedBox(
                height: 30.h,
              ),
              profile_row(
                text: 'Block Number',
                isdrop: true,
                icon: (Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class profile_row extends StatelessWidget {
  profile_row({
    required this.text,
    this.isdrop = false,
    required this.icon,
    super.key,
  });
  String text;
  IconData icon;
  bool isdrop = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40.h,
                  child: Icon(
                    icon,
                    color: Colors.green,
                  ),
                  width: 40.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade300),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            isdrop
                ? Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  )
                : Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15.sp))),
      width: 320.w,
      height: 60.w,
    );
  }
}
