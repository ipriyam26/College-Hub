import 'package:college_hub/models/car_pool_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../helper/utils.dart';
import '../widgets/car_pool_card.dart';

class CarPool extends StatefulWidget {
  const CarPool({super.key});

  @override
  State<CarPool> createState() => _CarPoolState();
}

class _CarPoolState extends State<CarPool> {
  List<CarPoolData> carpool_data = Utils.getCarPoolData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        elevation: 5,
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
      body: Container(
        child: CarPoolCard(
          name: "Suketa",
          destination: "Pari Chowk",
          seatsAvailable: "3/4",
          profile_url: "assets/fruits.png",
        ),
      ),
    );
  }
}
