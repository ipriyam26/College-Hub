import 'package:college_hub/Models/car_pool_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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
          'Car Pool',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
                itemCount: carpool_data.length,
                padding: EdgeInsets.all(10.sp),
                itemBuilder: ((BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () {
                      // This Will Call When User Click On ListView Item
                      showDialogFunc(
                        context,
                        carpool_data[index].name as String,
                        carpool_data[index].location as String,
                        carpool_data[index].Time as String,
                        carpool_data[index].seatsAvailable as String,
                        carpool_data[index].Price as int,
                      );
                    },
                    child: CarPoolCard(
                        name: carpool_data[index].name as String,
                        destination: carpool_data[index].location as String,
                        Price: carpool_data[index].Price as int,
                        Time: carpool_data[index].Time as String,
                        seatsAvailable:
                            carpool_data[index].seatsAvailable as String,
                        profile_url: carpool_data[index].profile_url as String),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

showDialogFunc(context, String name, String destination, String time,
    String seatsAvailable, int price) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15.sp),
            height: 360.h,
            width: 300.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "CAR POOL",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Destination",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Time",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Car Share",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Description",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Seats Available",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            destination,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            time,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Rs $price",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Description",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "$seatsAvailable are available",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipOval(
                      child: Material(
                        elevation: 10,
                        shadowColor: Colors.black,
                        color: Colors.blue, // Button color
                        child: InkWell(
                          splashColor: Colors.red, // Splash color
                          onTap: () {},
                          child: SizedBox(
                              width: 40.w,
                              height: 40.w,
                              child: Icon(
                                Icons.mail_outline,
                                size: 30.sp,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    ClipOval(
                      child: Material(
                        elevation: 10,
                        color: Colors.blue, // Button color
                        child: InkWell(
                          splashColor: Colors.red, // Splash color
                          onTap: () {},
                          child: SizedBox(
                              width: 40.w,
                              height: 40.w,
                              child: Icon(
                                Icons.phone,
                                size: 30.sp,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () async {
                    await FlutterPhoneDirectCaller.callNumber('+918384055155');
                  },
                  child: Container(
                    width: 314.w,
                    height: 40.h,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff22ABB9),
                            Color(0xff22ABB9),
                          ],
                          end: Alignment.centerLeft,
                          begin: Alignment.centerRight),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Send Request",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(color: Theme.of(context).backgroundColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
