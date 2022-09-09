import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Salon extends StatelessWidget {
  const Salon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salon'),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.red,
                height: 300.h,
              )
            ],
          )
        ],
      ),
    );
  }
}
