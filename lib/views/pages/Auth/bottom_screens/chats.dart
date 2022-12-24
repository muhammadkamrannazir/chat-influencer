import 'package:chat_influencer/views/widgets/corner_button.dart';
import 'package:chat_influencer/views/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: CornerButton(
                    name: 'Admin Private Chat',
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 8.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          text: 'Chats',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit))

                      ],
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
