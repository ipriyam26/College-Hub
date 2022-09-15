import 'package:college_hub/Screens/food_outlets/chaiok.dart';
import 'package:college_hub/Screens/food_outlets/kathi.dart';
import 'package:college_hub/Screens/food_outlets/maggiehotspot.dart';
import 'package:college_hub/Screens/food_outlets/quench.dart';
import 'package:college_hub/widgets/outlet_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FoodOutlet extends StatelessWidget {
  const FoodOutlet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Food Outlets',
          style: Theme.of(context).textTheme.headline4,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 18.sp,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        // title: Text(
        //   'Food Outlets',
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //     fontSize: 16.sp
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: GestureDetector(
                    onTap: () {
                      Get.to(const Kathi());
                    },
                    child: const outletCard(
                      imageurl: "assets/kathi.png",
                      outletname: "Kathi Junction",
                      category: "North Indian , Veg & Non-Veg , Bevrages",
                    ))),
            Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: GestureDetector(
                    onTap: () {
                      Get.to(const maggieHotspot());
                    },
                    child: const outletCard(
                        imageurl: "assets/maggiehotspot.png",
                        outletname: "Maggie Hotspot",
                        category: '''Snacks, Munchies, Desserts'''))),
            Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: GestureDetector(
                    onTap: () {
                      Get.to(const Quench());
                    },
                    child: const outletCard(
                        imageurl: "assets/quench.png",
                        outletname: "Quench",
                        category: '''Burgers, Mocktails, Wraps, Waffels'''))),
            Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: GestureDetector(
                    onTap: () {
                      Get.to(const chaiOk());
                    },
                    child: const outletCard(
                        imageurl: "assets/chaiok.png",
                        outletname: "Chai Ok",
                        category: '''Street Style, Juices, Coffee, Tea''')))
          ],
        ),
      ),
    );
  }
}
