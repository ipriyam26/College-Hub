import 'package:college_hub/Screens/food_outlets/kathi.dart';
import 'package:college_hub/widgets/outlet_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


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
        elevation: 5,
        backgroundColor: Colors.white,
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
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
                    image: AssetImage(
                      "assets/maggiehotspot.png",
                    ),
                    colorFilter: 
              ColorFilter.mode(Colors.black.withOpacity(0.8), 
              BlendMode.dstATop),
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
              Text("  Maggie Hotspot",style: Theme.of(context).textTheme.headline4,),
              SizedBox(
                height: 5.h,
              ),
              Text("   Snacks, Munchies, Desserts",style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 14.sp,color: Theme.of(context).disabledColor),),
        
            ],
          ),
        ),
      ),
    );
  }
}
