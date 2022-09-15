import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        'Notifications',
        style: Theme.of(context).textTheme.headline4!.apply(
              color: Theme.of(context).dividerColor,
            ),
      ),
    ),
      body: SingleChildScrollView(
        child: SizedBox(
          // color: Colors.pink,
          width: 380.w,
          child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NotifyRow(
                imageUrl: 'assets/notify1.png',
                parentText: 'Pick your laundry',
                subText: '27 March 2021',
              ),
             
              NotifyRow(
                imageUrl: 'assets/notify2.png',
                parentText: 'Cleaning staff accepted your \nrequest',
                subText: '27 March 2021',
              ),
             
              NotifyRow(
                imageUrl: 'assets/notify3.png',
                parentText: 'Maintenence staff  your \nrequest',
                subText: '27 March 2021',
              ),
              
              NotifyRow(
                imageUrl: 'assets/notify4.png',
                parentText: 'Your food is ready. Please pick \nup',
                subText: '27 March 2021',
              ),
             
              NotifyRow(
                imageUrl: 'assets/notify5.png',
                parentText: 'Maintenence staff accepted \nyour request',
                subText: '27 March 2021',
              ),
             
              NotifyRow(
                imageUrl: 'assets/notify2.png',
                parentText: 'Your food is ready. Please pick \nup',
                subText: '27 March 2021',
              ),
              
              NotifyRow(
                imageUrl: 'assets/notify6.png',
                parentText: 'Your doubt session request is \naccepted',
                subText: '27 March 2021',
              ),
            ],
          ),
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

        margin: EdgeInsets.symmetric(vertical: 5.h),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        elevation: 2,
        child: SizedBox(

          width: 325.w,
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 31.h,
                width: 31.w,
                child: Image.asset(imageUrl, height: 31.h, width: 31.w,
                fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 215.w,
                // height: 30.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      parentText,
                      style: Theme.of(context).textTheme.headline5!.apply(
                        fontSizeDelta: -1.sp,
                      ),
                    ),
                    Text(
                      subText,
                      style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 9.sp, color: const Color(0xffAAAAAA)),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [Icon(Icons.more_horiz)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
