import 'package:college_hub/Screens/cleaning.dart';
import 'package:college_hub/Widgets/select_timing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    var appBarMaintenance = AppBar(
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
        'Maintenance',
        style: Theme.of(context).textTheme.headline4!.apply(
              color: Theme.of(context).dividerColor,
            ),
      ),
    );

   

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: appBarMaintenance,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(height: 10.h,),
              Container(
                margin: EdgeInsets.only(left: 24.w, right: 22.h),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(width: 260.w, child: MaintenanceMenu()),
                  SizedBox(
                    height: 25.h,
                  ),
                  describeYourProblem(context),
                  SizedBox(
                    height: 25.h,
                  ),
                  
                ]),
              ),
               SelectTiming(),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 314.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                    color: const Color(0xFF22A8B9),
                  ),
                  child: Center(
                    child: Text(
                      'Submit Request',
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],

            ),
          )
        ],
      ),
    );
  }

  TextField describeYourProblem(BuildContext context) {
    return TextField(
          maxLines: 7,
          decoration: InputDecoration(
            hintText: 'Describe your problem...',
            hintStyle: Theme.of(context).textTheme.subtitle1!.apply(
                  color: Theme.of(context).dividerColor,
                ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xffE3E3E3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Color(0xffE3E3E3),
              ),
            ),
          ),
        );
  }
}



class MaintenanceMenu extends StatefulWidget {
  MaintenanceMenu({Key? key}) : super(key: key);
  List<String> list = <String>[
    'AC Repairs',
    'Wifi issue',
    'Water Cooler',
    'List issue',
    'Others'
  ];

  @override
  State<MaintenanceMenu> createState() => _MaintenanceMenuState();
}

class _MaintenanceMenuState extends State<MaintenanceMenu> {
  @override
  Widget build(BuildContext context) {
    String current = widget.list.first;
    var inputDecoration = InputDecoration(
      contentPadding: EdgeInsets.only(left: 18.w),
      enabledBorder: OutlineInputBorder(
          //<-- SEE HERE
          borderSide: const BorderSide(
            color: Color(0xffE3E3E3),
          ),
          borderRadius: BorderRadius.circular(8.r)),
      focusedBorder: OutlineInputBorder(
          //<-- SEE HERE
          borderSide: BorderSide(color: Color(0xffE3E3E3)),
          borderRadius: BorderRadius.circular(8.r)),
      filled: true,
      fillColor: Theme.of(context).backgroundColor,
    );

    var downArrow = Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Theme.of(context).dividerColor,
      ),
    );

    var hintText = Text(
      'Select a category',
      style: Theme.of(context).textTheme.subtitle1!.apply(
            color: Theme.of(context).dividerColor,
            fontWeightDelta: 2,
          ),
    );
    return DropdownButtonFormField(
        hint: hintText,
        icon: downArrow,
        decoration: inputDecoration,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        dropdownColor: Theme.of(context).backgroundColor,

        // value: current,
        style: Theme.of(context).textTheme.headline6!.apply(
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
        isExpanded: true,
        elevation: 0,
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? value) {
          setState(() {
            current = value!;
          });
        });
  }
}
