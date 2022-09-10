import 'package:college_hub/widgets/foodlist_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class Quench extends StatelessWidget {
  const Quench({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
        'Quench',
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
        elevation: 5,
        backgroundColor: Colors.white,
        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Container(
              height: 271.h,
              width: 350.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                  "assets/quench.png",
                )),
                borderRadius: BorderRadius.circular(24.sp)
              ),
              
            ),
            Padding(
              padding: EdgeInsets.only(left:25.sp,right: 25.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                height: 5.h,
              ),
              Text("Quench",style: Theme.of(context).textTheme.headline4,),
              SizedBox(
                height: 10.h,
              ),
              Text("North Indian, Veg & Non-Veg , Bevrages",style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14.sp,color: Theme.of(context).disabledColor),),
              SizedBox(
                height: 15.h,
              ),
              Text('''Today’s Exclusive Dishes''',style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              FoodListBar(name: "Maharaja Burger", imageurl: "assets/kathi.png", price: "60", bestseller: true, Veg: true,category: "In Bread",),
              SizedBox(
                height: 15.h,
              ),
              Text('''Previously Ordered Items''',style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              FoodListBar(name: "Paneer Wrap", imageurl: "assets/kathi.png", price: "120", bestseller: true, Veg: false,category: "In Bread",),

              SizedBox(
                height: 10.h,
              ),

              FoodListBar(name: "Peri Peri Fries", imageurl: "assets/kathi.png", price: "65", bestseller: true, Veg: true,category: "North Indian",),

              SizedBox(
                height: 15.h,
              ),

              Text('''Wraps''',style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14.sp)),

              SizedBox(
                height: 10.h,
              ),

              FoodListBar(name: "Aloo Paratha", imageurl: "assets/kathi.png", price: "65", bestseller: true, Veg: true,category:"" ,),

              SizedBox(
                height: 10.h,
              ),

              FoodListBar(name: "Paneer Wrap", imageurl: "assets/kathi.png", price: "70", bestseller: false, Veg: true,category:"" ,),

              SizedBox(
                height: 10.h,
              ),

              FoodListBar(name: "Vegetable Wrap", imageurl: "assets/kathi.png", price: "65", bestseller: false, Veg: true,category:"" ,),

              SizedBox(
                height: 10.h,
              ),

              FoodListBar(name: "Aloo Tikki Wrap", imageurl: "assets/kathi.png", price: "65", bestseller: false, Veg: true,category:"" ,),

              SizedBox(
                height: 15.h,
              ),
              Text('''North Indian''',style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14.sp)),
              SizedBox(
                height: 10.h,
              ),
              FoodListBar(name: "Fries With Cheese ", imageurl: "assets/kathi.png", price: "60", bestseller: true, Veg: true,category:"" ,),

              SizedBox(
                height: 10.h,
              ),
              FoodListBar(name: "Chole Kulche", imageurl: "assets/kathi.png", price: "60", bestseller: true, Veg: true,category:"" ,),

              SizedBox(
                height: 10.h,
              ),
              FoodListBar(name: "Pav Bhaji", imageurl: "assets/kathi.png", price: "60", bestseller: true, Veg: true,category:"" ,),

              
                ],
              ),
            ),
            
            
        
          ],
        ),
      ),
    );
  }
}