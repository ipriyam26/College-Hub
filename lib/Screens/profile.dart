import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
        'My Profile',
        style: Theme.of(context).textTheme.headline4!.apply(
              color: Theme.of(context).dividerColor,
            ),
      ),
    ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.sp,
                backgroundColor: Color(0xffEEEEEE),
                child: Container(
                                    padding: const EdgeInsets.all(5.0),

decoration: const BoxDecoration(shape: BoxShape.circle,

color: Colors.white,
),
                  child: CircleAvatar(
                    radius: 50.sp,
                    backgroundImage: const AssetImage('assets/image.png'),
                  ),
                ),
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
                'Priyam Srivastava',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    fontWeight: FontWeight.w500),
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
                    height: 65.h,
                    width: 326.w,
                    decoration: BoxDecoration(
                        color: Color(0xff22A8B9),
                        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text('Email Id',
                        style: Theme.of(context).textTheme.overline!.apply(
                          fontFamily: GoogleFonts.raleway().fontFamily,
                        ),
                        ),
                        SizedBox(
                          height: 4.w,
                        ),
                         Text('E20cse397@bennett.edu.in',
                         style: Theme.of(context).textTheme.overline!.apply(
                          fontFamily: GoogleFonts.raleway().fontFamily,
                        ),
                        ),
                      ],
                    ),
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
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15.sp))),
      width: 320.w,
      height: 60.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade300),
                  child: Icon(
                    icon,
                    color: Color(0xff0E7769),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  text,
                  style:  Theme.of(context).textTheme.overline!.apply(
                          fontFamily: GoogleFonts.raleway().fontFamily,
                          color: Theme.of(context).dividerColor,
                          fontSizeDelta: -1
                        ),
                ),
              ],
            ),
            isdrop
                ? const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  )
                :  Icon(
                    Icons.arrow_forward_ios,
                    size: 15.sp,
                    color: Colors.black,
                  )
          ],
        ),
      ),
    );
  }
}
