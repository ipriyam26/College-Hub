import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Food Outlets',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(9.sp),
        child: Center(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '2 items in this order from Quench',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Container(
                      width: 341.w,
                      height: 120.h,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.sp, horizontal: 6.sp),
                                    child: Icon(
                                      Icons.cancel,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Image.asset('assets/image 71.png'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Maharaja Burger',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  Text(
                                    '1 Piece',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Rs 150',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.sp))),
                    ),
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.6,
                    color: Colors.grey.shade400,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Container(
                      width: 341.w,
                      height: 120.h,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 6.sp, horizontal: 6.sp),
                                    child: Icon(
                                      Icons.cancel,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Image.asset('assets/image 71.png'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Maharaja Burger',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  Text(
                                    'Maharaja Burger',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Rs 150',
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.sp))),
                    ),
                  ),
                  Container(
                    width: 344.w,
                    height: 124.h,
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.sp),
                          child: Text(
                            'Bill Details',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                        Divider(
                          indent: 10,
                          color: Colors.black,
                          thickness: 0.2,
                        ),
                        bill_row(
                          tail: 'Rs 500',
                          head: 'Total Price',
                        ),
                        bill_row(
                          tail: 'Rs 0.00',
                          head: 'Extra Charges',
                        ),
                        bill_row(
                          tail: 'Rs 300',
                          head: 'Bill Total',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 344.w,
                    height: 223.h,
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Section Title',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            'Order Id',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(color: Colors.grey),
                          ),
                          Text(
                            'Payment',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: [
                              Text(
                                'Payment UPI',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                width: 60.w,
                                child: Center(
                                    child: Text(
                                  'Paid',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(color: Colors.black),
                                )),
                                height: 18.h,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.sp)),
                                ),
                              )
                            ],
                          ),
                          Text(
                            'E20CSE397',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            'Order Id',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(color: Colors.grey),
                          ),
                          Text(
                            'E20CSE397',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(10.sp))),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class bill_row extends StatelessWidget {
  bill_row({
    required this.tail,
    required this.head,
    super.key,
  });

  String head;
  String tail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            head,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.grey),
          ),
          Text(
            tail,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
