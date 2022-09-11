import 'package:college_hub/Screens/Appointment.dart';
import 'package:college_hub/Screens/TuckShop.dart';
import 'package:college_hub/Screens/car_pool.dart';
import 'package:college_hub/Screens/cleaning.dart';
import 'package:college_hub/Screens/food_outlets/food_outlet.dart';
import 'package:college_hub/Screens/laundry.dart';
import 'package:college_hub/Screens/maintenance.dart';
import 'package:college_hub/Screens/time_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
   Categories({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<String> categories;
final List<int> cat = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

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
            return InkWell(
              onTap: (){
              print("Clicked");
              if(index == 0){
                Get.to(() => const Laundry());
              }
              else if(index==1){
                // Get.to(() =>  Cleaning());
              }
              else if(index==2){
                Get.to(() => const CarPool());
              }
              else if(index==3){
                Get.to(() => const MaintenanceScreen());
              }
              else if(index==4){
                Get.to(() =>  Cleaning());
              }
              else if(index==5){
                Get.to(() =>  TuckShop());
              }
              else if(index==6){
                Get.to(() => const FoodOutlet());
              }
              else if(index==7){
                // Get.to(() => const FoodOutlet());
              }
              else if(index==8){
                Get.to(() =>  const Appointment());
              }
              else if(index==9){
                Get.to(() =>  TimeTable());
              }
              else if(index==10){
                // Get.to(() =>  Cleaning());
              }
              },
              child: Category(
                image: categories[index],
              ),
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
  const Category({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
