import 'package:chat_influencer/utils/app_colors.dart';
import 'package:chat_influencer/utils/app_images.dart';
import 'package:chat_influencer/views/pages/Auth/login.dart';
import 'package:chat_influencer/views/widgets/circularimg.dart';
import 'package:chat_influencer/views/widgets/corner_button.dart';
import 'package:chat_influencer/views/widgets/my_text.dart';
import 'package:chat_influencer/views/widgets/my_text_field.dart';
import 'package:chat_influencer/views/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  // final circularController = Get.put(CircularController());
  RegisterPage({super.key});

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
                    text: 'Iscriviti ora',
                    fontSize: 32.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 80.h),
                  Column(
                    children: [
                      MyTextField(
                        hintText: 'Nome e Cognome',
                        // prefixIcon: Assets.profile,
                      ),
                      SizedBox(height: 14.h),
                      MyTextField(
                        hintText: 'La tua e-mail',
                        // prefixIcon: Assets.email,
                      ),
                      SizedBox(height: 14.h),
                      MyTextField(
                        hintText: 'Password (Min X caratteri)',
                        // prefixIcon: Assets.pass,
                      ),
                      SizedBox(height: 14.h),
                      MyTextField(
                        hintText: 'Ripeti Passowrd',
                        // prefixIcon: Assets.pass,
                      ),
                      SizedBox(height: 22.h),
                      MyRoundedButton(
                          name: 'Registrati',
                          onPressed: () {
                            Get.to(LoginPage());
                          }),
                      SizedBox(
                        height: 120.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Hai già un account? ',
                            color: Colors.white,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(LoginPage());
                            },
                            child: MyText(
                              text: 'Accedi ora',
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
