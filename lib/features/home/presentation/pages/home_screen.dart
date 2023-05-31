import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_mit/core/theme/colors/colors.dart';
import 'package:pro_mit/features/home/presentation/pages/add_clinic_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.blue[200],
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Image(
              image: const AssetImage('assets/images/logo.png'),
              height: 28.h,
              width: 24,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            color: const Color.fromRGBO(99, 203, 233, 0.1),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 96.w,
                  height: 96.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/Doctor.png'))),
                ),
                // SizedBox(height: 16.h),
                Text(
                  'Dr. Ahmed Khaled',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF333333)),
                ),
                Text(
                  'Dentist',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF828282)),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Clinics',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => const AddClinicScreen(),
                          ));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 18.h,
                              color: ColorManager.primary,
                            ),
                            Text(
                              'Add Clinic',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: ColorManager.primary,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CardWidget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          const FooterWidget()
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147.h,
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      width: double.infinity,
      color: const Color.fromRGBO(99, 203, 233, 0.1),
      child: Column(
        children: [
          Row(
            children: [
              Image(
                image: const AssetImage('assets/images/logo.png'),
                width: 24.w,
                height: 28.h,
              ),
              SizedBox(width: 8.w),
              Row(
                children: [
                  const Text(
                    'Pro',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Med',
                    style: TextStyle(
                        color: ColorManager.primary,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              SubTitleTextWidget(text: 'About'),
              SizedBox(width: 16.w),
              SubTitleTextWidget(text: 'Privacy Policy'),
              SizedBox(width: 16.w),
              SubTitleTextWidget(text: 'Contact us'),
              SizedBox(width: 16.w),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                '© 2023 Pro Med, Inc. All rights reserved.',
                style:
                    TextStyle(fontSize: 12.sp, color: const Color(0xff333333)),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SubTitleTextWidget extends StatelessWidget {
  final String text;
  double? size;
  SubTitleTextWidget({
    super.key,
    required this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF828282)),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        color: ColorManager.cardColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/images/map.png'),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'My Clinics',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Dentist',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF828282)),
                  ),
                ],
              )
            ],
          )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                        width: 1.w, color: ColorManager.borderColor)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AvailableRestHours(title: 'Available Hours:'),
                    Divider(
                      color: ColorManager.borderColor,
                      thickness: 1.h,
                    ),
                    const AvailableRestHours(
                      title: 'Rest Times:',
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Appointment Times',
                  style: TextStyle(
                      color: ColorManager.primary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Or Book by Number: 0943908303',
                  style: TextStyle(
                      color: ColorManager.primary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class AvailableRestHours extends StatelessWidget {
  final String title;
  const AvailableRestHours({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF828282)),
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Text(
                        'Sat:',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                      Text(
                        '9 AM - 5 PM',
                        style: TextStyle(
                            color: const Color(0xFF828282), fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Text(
                        'Sat:',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                      Text(
                        '9 AM - 5 PM',
                        style: TextStyle(
                            color: const Color(0xFF828282), fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Text(
                        'Sat:',
                        style: TextStyle(color: Colors.black, fontSize: 12.sp),
                      ),
                      Text(
                        '9 AM - 5 PM',
                        style: TextStyle(
                            color: const Color(0xFF828282), fontSize: 12.sp),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
