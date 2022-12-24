import 'package:chat_influencer/utils/app_colors.dart';
import 'package:chat_influencer/utils/app_images.dart';
import 'package:chat_influencer/views/pages/Auth/login.dart';
import 'package:chat_influencer/views/pages/Auth/register.dart';
import 'package:chat_influencer/views/widgets/circularimg.dart';
import 'package:chat_influencer/views/widgets/corner_button.dart';
import 'package:chat_influencer/views/widgets/my_text.dart';
import 'package:chat_influencer/views/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  // final circularController = Get.put(CircularController());
  WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.h),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 86.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 176.32.w),
                    child: MyCircularImg(
                        AssetPath: Assets.welcome1, height: 80.h, width: 80.w),
                  ),
                ),
                Positioned(
                  top: 175.53,
                  left: -28.68.h,
                  child: MyCircularImg(
                      AssetPath: Assets.welcome2,
                      height: 133.86.h,
                      width: 133.86.w),
                ),
                Positioned(
                  top: 255.85,
                  right: -7.38.h,
                  child: MyCircularImg(
                      AssetPath: Assets.welcome3, height: 71.h, width: 71.w),
                ),
                Positioned(
                  bottom: 277.85,
                  left: .38.h,
                  child: MyCircularImg(
                      AssetPath: Assets.welcome4, height: 80.h, width: 80.w),
                ),
                Positioned(
                  bottom: 282.85,
                  right: 128.h,
                  child: MyCircularImg(
                      AssetPath: Assets.welcome5,
                      height: 35.7.h,
                      width: 35.7.w),
                ),
                Positioned(
                  bottom: 120.85,
                  left: 96.h,
                  child: MyCircularImg(
                      AssetPath: Assets.welcome6, height: 62.h, width: 62.w),
                ),
                Positioned(
                  bottom: 110.85,
                  right: -33.h,
                  child: MyCircularImg(
                      AssetPath: Assets.welcome7, height: 107.h, width: 107.w),
                ),
                Positioned(
                  bottom: 42.85.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      children: [
                        MyRoundedButton(
                            name: 'ISCRIVITI ORA',
                            onPressed: () {
                              Get.to(RegisterPage());
                            }),
                        SizedBox(height: 9.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(text: 'Hai già un account?  '),
                            GestureDetector(
                              onTap: () {
                                Get.to(RegisterPage());
                              },
                              child: MyText(
                                text: 'Accedi',
                                color: MyColor.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 321.85.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80.w),
                    child: Column(
                      children: [
                        MyText(
                          text: 'Benvenuto in ',
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w300,
                        ),
                        MyText(
                          text: 'Influencer Club',
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: CornerButton(
                    name: 'User Sign in',
                    onPressed: () {
                      print('sadfsdaf');
                      Get.to(LoginPage());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
