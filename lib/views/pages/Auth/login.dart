import 'package:chat_influencer/utils/app_colors.dart';
import 'package:chat_influencer/utils/app_images.dart';
import 'package:chat_influencer/views/pages/Auth/login.dart';
import 'package:chat_influencer/views/pages/Auth/register.dart';
import 'package:chat_influencer/views/pages/home.dart';
import 'package:chat_influencer/views/widgets/circularimg.dart';
import 'package:chat_influencer/views/widgets/corner_button.dart';
import 'package:chat_influencer/views/widgets/my_text.dart';
import 'package:chat_influencer/views/widgets/my_text_field.dart';
import 'package:chat_influencer/views/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  // final circularController = Get.put(CircularController());
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 7.h),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.background),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 160.h),
                  MyText(
                    text: 'Accedi',
                    fontSize: 32.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 80.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Email',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 10.h),
                      MyTextField(
                        hintText: 'La tua e-mail',
                      ),
                      SizedBox(height: 35.h),
                      MyText(
                        text: 'Password',
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 10.h),
                      MyTextField(
                        hintText: 'Password ',
                      ),
                      SizedBox(height: 22.h),
                      MyRoundedButton(
                        name: 'Login',
                        onPressed: () {
                          Get.to( HomePage());
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Hai dimenticato la password?',
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Non hai un account?  ',
                            color: Colors.white,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(RegisterPage());
                            },
                            child: MyText(
                              text: 'Iscriviti ora',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
