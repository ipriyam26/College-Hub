import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/button.dart';
import 'laundry.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ClipOval(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    input_label(
                      title: 'College Id',
                      hint: 'E20CSE397@bennett.edu.in',
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {},
                        ),
                        Text('Hostels'),
                        Checkbox(
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (bool? value) {},
                        ),
                        Text(
                          'Day Scholars',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    input_label(
                      title: 'Name',
                      hint: 'Priyam Shrivastava',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    input_label(
                      title: 'Phone Number',
                      hint: '+91 9425164829',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Room Number'),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: 154.52.sp,
                              child: TextField(
                                  onTap: () {},
                                  // controller: controller,
                                  decoration: InputDecoration(
                                    hintText: '502',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Room Number'),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: 154.52.sp,
                              child: TextField(
                                  onTap: () {},
                                  // controller: controller,
                                  decoration: InputDecoration(
                                    hintText: '502',
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 0.0),
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    input_label(title: 'Laundry Bag Number', hint: '812'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Already have an account? ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(text: 'Log In'),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    button(
                      text: "Sign Up",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class input_label extends StatelessWidget {
  input_label({
    required this.title,
    required this.hint,
    super.key,
  });
  String title;
  String hint;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.sp),
        child: Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12.sp),
        child: TextField(
            onTap: () {},
            // controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                borderRadius: BorderRadius.circular(10.sp),
              ),
            )),
      )
    ]);
  }
}
