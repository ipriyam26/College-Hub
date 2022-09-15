import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/foodlist_bar.dart';

class maggieHotspot extends StatelessWidget {
  const maggieHotspot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Maggie Hotspot',
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Card(
                elevation: 0,
                shadowColor: Theme.of(context).disabledColor,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Ink.image(
                          image: const AssetImage(
                            "assets/maggiehotspot.png",
                          ),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.8), BlendMode.dstATop),
                          height: 271.h,
                          width: 350.w,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Maggie Hotspot",
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "North Indian, Veg & Non-Veg , Bevrages",
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontSize: 14.sp, color: Theme.of(context).disabledColor),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('''Today’s Exclusive Dishes''',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Aloo Paratha",
                imageurl: "assets/maggiehotspot.png",
                price: "60",
                bestseller: true,
                Veg: true,
                category: "In Bread",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('''Previously Ordered Items''',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Fried Chicken",
                imageurl: "assets/food_items/friedchicken.png",
                price: "120",
                bestseller: true,
                Veg: false,
                category: "In Bread",
              ),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Chole Bhature",
                imageurl: "assets/food_items/cholebhature.png",
                price: "65",
                bestseller: true,
                Veg: true,
                category: "North Indian",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('''Breads''',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Aloo Paratha",
                imageurl: "assets/food_items/aloopratha.png",
                price: "65",
                bestseller: true,
                Veg: true,
                category: "",
              ),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Mixed Paratha",
                imageurl: "assets/food_items/cholebhature.png",
                price: "70",
                bestseller: false,
                Veg: true,
                category: "",
              ),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Paneer Paratha",
                imageurl: "assets/food_items/paneerpratha.png",
                price: "65",
                bestseller: false,
                Veg: true,
                category: "",
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('''North Indian''',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Chole Bhature",
                imageurl: "assets/food_items/cholebhature.png",
                price: "60",
                bestseller: true,
                Veg: true,
                category: "",
              ),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Chole Kulche",
                imageurl: "assets/food_items/cholekulche.png",
                price: "60",
                bestseller: true,
                Veg: true,
                category: "",
              ),
              SizedBox(
                height: 10.h,
              ),
              const FoodListBar(
                name: "Pav Bhaji",
                imageurl: "assets/food_items/paubhaji.png",
                price: "60",
                bestseller: true,
                Veg: true,
                category: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
