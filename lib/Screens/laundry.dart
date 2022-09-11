
import 'package:college_hub/widgets/cleaning_popup.dart';

import 'package:college_hub/controllers/laundaryController.dart';
import 'package:college_hub/controllers/user_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'car_pool.dart';

class Laundry extends StatelessWidget {
  Laundry({Key? key}) : super(key: key);

  // LaundaryController laundaryController = Get.put(LaundaryController());
  @override
  Widget build(BuildContext context) {
    var appBarMain = AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      centerTitle: false,
      elevation: 0,
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
      title: Text(
        'Laundry',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: appBarMain,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 13.h, left: 17.w, right: 17.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelField(
                    label: "Enrollment Number",
                    width: 345.w,
                    data: "dfsdf",
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LabelField(
                          label: "Laundry Bag Number",
                          width: 125.w,
                          data: "812"),
                      LabelField(
                          label: "Date", width: 125.w, data: "01-Sep-2022")
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),

            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: SizedBox(
                  height: 560.h,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 26.h, horizontal: 20.w),
                    decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.r),
                            topRight: Radius.circular(30.r))),
                    child: Column(children: [
                      const LaundryList(
                        itemName: "T-Shirt",
                        iconUrl: "assets/tshirt.png",
                      ),
                      const LaundryList(
                        itemName: "Shorts",
                        iconUrl: "assets/003-pants.png",
                      ),
                      const LaundryList(
                        itemName: "Cardigans",
                        iconUrl: "assets/004-cardigan.png",
                      ),
                      const LaundryList(
                        itemName: "Dresses",
                        iconUrl: "assets/005-dress.png",
                      ),
                      const LaundryList(
                        itemName: "Home",
                        iconUrl: "assets/Home.png",
                      ),
                      const LaundryList(
                        itemName: "Others",
                        iconUrl: "assets/007-tie.png",
                      ),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 20.h),
                            child: ElevatedButton(
                                // style: ,
                                onPressed: () {},
                                child: Container(
                                    height: 48.h,
                                    width: 314.w,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Generate Slip",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(color: Colors.white),
                                    ))),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),

              ),
            )
          ],
        ));
  }
}

class LaundryList extends StatefulWidget {
  const LaundryList({Key? key, required this.itemName, required this.iconUrl})
      : super(key: key);

  final String itemName;
  final String iconUrl;
  @override
  State<LaundryList> createState() => _LaundryListState();
}

class _LaundryListState extends State<LaundryList> {
  var noOfbag = 0;

  void addValue() {
    setState(() => noOfbag += 1);
  }

  void minValue() {
    setState(() => noOfbag -= 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          color: Colors.white,
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [

                  Image.asset(widget.iconUrl),

                  SizedBox(
                    width: 17.w,
                  ),
                  Text(

                    widget.itemName,

                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .apply(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      height: 20.h,
                      width: 20.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(5.r)),

                      child: GestureDetector(
                        onTap: (() {
                          minValue();
                        }),
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 10.sp,
                        ),

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Text(

                      "$noOfbag",

                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .apply(color: Colors.black, fontWeightDelta: 700),
                    ),
                  ),

                  noOfbag == 10
                      ? ClipOval(
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: GestureDetector(
                              onTap: (() {
                                showcleaningpopup(context);
                              }),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 10.sp,
                              ),
                            ),
                          ),
                        )
                      : ClipOval(
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(5.r)),
                            child: GestureDetector(
                              onTap: (() {
                                addValue();
                              }),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 10.sp,
                              ),
                            ),
                          ),
                        ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LabelField extends StatelessWidget {
  final double width;
  final String label;
  final String data;
  const LabelField({
    Key? key,
    required this.label,
    required this.width,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.caption),
        Container(
          width: width,
          height: 35.h,
          margin: EdgeInsets.only(top: 5.h),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 21.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.sp),
              border: Border.all(width: 1.5, color: const Color(0xffEEEEEE))),
          child: Text(data,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .apply(fontWeightDelta: 600)),
        ),
      ],
    );
  }
}

showcleaningpopup(context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).backgroundColor),
            padding: EdgeInsets.all(15.sp),
            height: 200.h,
            width: 200.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7.sp)),
                    color: Colors.red,
                  ),
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Sorry no more than 10 clothes \ncan be selected',
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 314.w,
                    height: 40.h,
                    decoration: BoxDecoration(
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
                      "OK",
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
