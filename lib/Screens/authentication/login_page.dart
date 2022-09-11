import 'package:college_hub/Screens/food_outlets/kathi.dart';
import 'package:college_hub/Screens/home.dart';
import 'package:college_hub/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../../widgets/button.dart';
import '../../widgets/loginpage_header.dart';
// import 'package:flutterlogindesign/pages/regi_page.dart';
// import 'package:flutterlogindesign/utils/color.dart';
// import 'package:flutterlogindesign/widgets/btn_widget.dart';
// import 'package:flutterlogindesign/widgets/herder_container.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30.h),
        child: Column(
          children: <Widget>[
            HeaderContainer("Login"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 30.sp),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _textInput(
                          hint: "Enter your Institute ID",
                          icon: Icons.email,
                          obscuretext: false),
                      _textInput(
                          hint: "Password",
                          icon: Icons.vpn_key,
                          obscuretext: true),
                      Container(
                        margin: EdgeInsets.only(top: 10.sp),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                        ),
                      ),

                      SizedBox(
                        height: 50.h,
                      ),
                      Center(
                        child: ButtonWidget(
                          onClick: () {
                            Get.to(Home());
                          },
                          btnText: "LOGIN",
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account ? ",
                              style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(
                              text: "Registor",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: Theme.of(context).highlightColor)),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon, obscuretext}) {
    return Container(
      margin: EdgeInsets.only(top: 10.sp),
      height: 47.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10.sp),
      child: TextFormField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline5!.copyWith(
              color: Theme.of(context).disabledColor.withOpacity(0.4)),
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
