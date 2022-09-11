import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodListBar extends StatelessWidget {
  const FoodListBar({
    super.key,
    required this.name,
    required this.imageurl,
    required this.category,
    required this.price,
    required this.bestseller,
    required this.Veg,
  });

  final String name;
  final String imageurl;
  final String price;
  final String category;
  final bool bestseller;
  final bool Veg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.sp,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).disabledColor),
          borderRadius: BorderRadius.circular(8.sp)),
      child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.crop_square_sharp,
                          color: Veg ? Colors.green : Colors.red,
                          size: 25.sp,
                        ),
                        Icon(Icons.circle,
                            color: Veg ? Colors.green : Colors.red,
                            size: 10.sp),
                      ],
                    ),
                    if (bestseller) ...[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8.sp)),
                        height: 12.h,
                        width: 70.w,
                        child: Text(
                          "Bestseller",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(color: Colors.red),
                        ),
                      )
                    ],
                  ],
                ),
                if (this.category != "") ...[
                  Text(
                    this.category,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
                Text(
                  this.name,
                  style: Theme.of(context).textTheme.button,
                ),
                Text(
                  "₹" + this.price,
                  style: Theme.of(context).textTheme.caption,
                ),
                ClipOval(
                  child: Material(
                    color: Colors.blue, // Button color
                    child: InkWell(
                      splashColor: Colors.red, // Splash color
                      onTap: () {},
                      child: SizedBox(
                          width: 20.w,
                          height: 20.w,
                          child: Icon(
                            Icons.favorite_border,
                            size: 15.sp,
                          )),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 100.h,
              width: 90.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/kathi.png",
                      )),
                  borderRadius: BorderRadius.circular(10.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
