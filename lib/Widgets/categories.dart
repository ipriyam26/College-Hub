import 'package:college_hub/Screens/Appointment.dart';
import 'package:college_hub/Screens/cleaning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Screens/laundry.dart';
import '../Screens/maintenance.dart';

class Categories extends StatelessWidget {
  Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  // final List<VoidCallback> pages = [
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  //   Laundry,
  // ];

  final List<int> cat = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(left: 12.w, top: 24.h),
        child: Text('Categories', style: Theme.of(context).textTheme.headline4),
      ),
      Container(
        margin: EdgeInsets.only(top: 16.h, left: 8.w, right: 8.w),
        height: 450.h,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 14.w,
            mainAxisSpacing: 14.h,
            crossAxisCount: 3,
          ),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Category(
              image: categories[index],
              ontap: () {
                if (cat[index] == 1) {
                  Get.to(Laundry());
                }
                if (cat[index] == 2) {
                  Get.to(MaintenanceScreen());
                }
                if (cat[index] == 3) {
                  Get.to(Cleaning());
                }
                if (cat[index] == 4) {
                  Get.to(Appointment());
                }
                if (cat[index] == 5) {
                  Get.to(Appointment());
                }
                if (cat[index] == 6) {
                  Get.to(Appointment());
                }
                if (cat[index] == 7) {
                  Get.to(Appointment());
                }
                if (cat[index] == 8) {
                  Get.to(Appointment());
                }
                if (cat[index] == 9) {
                  Get.to(Appointment());
                }
                if (cat[index] == 10) {
                  Get.to(Appointment());
                }
                if (cat[index] == 11) {
                  Get.to(Appointment());
                }
              },
            );
          },
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: categories.length,
        ),
      )
    ]);
  }
}

class Category extends StatelessWidget {
  Category({
    Key? key,
    required this.image,
    required this.ontap,
  }) : super(key: key);

  final String image;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        elevation: 10.sp,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Container(
          height: 100.h,
          width: 100.w,
          alignment: Alignment.center,
          child: Image.asset(
            'assets/$image',
            height: 52.h,
            width: 52.w,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
