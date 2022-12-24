import 'package:chat_influencer/controllers/bottombar_controller.dart';
import 'package:chat_influencer/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';

class CustomGetXBottomBar extends StatelessWidget {
  LandingPageController landingPageController =
      Get.put(LandingPageController());

  final Widget chats;
  final Widget chating;
  final Widget contacts;
  final Widget settings;

  CustomGetXBottomBar({
    required this.chats,
    required this.chating,
    required this.contacts,
    required this.settings,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: landingPageController.tabIndex.value,
        children: <Widget>[
          chats,
          chating,
          contacts,
          settings,
        ],
      ),
    );
  }
}

bottomNavItem({
  required String imgPath,
  required bool isSelected,
  String? toolTip,
}) {
  return BottomNavigationBarItem(
    tooltip: toolTip,
    icon: Image(
      height: 32.h,
      width: 32.w,
      image: AssetImage(imgPath),
      color: isSelected ? MyColor.blue : Colors.grey,
    ),
    label: '',
  );
}

buildBottomNavigationMenu(context, landingPageController) {
  return Obx(
    () => Material(
      elevation: 24,
      color: ThemeData().scaffoldBackgroundColor,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
        child: Container(
          // decoration: const BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey,
          //     )
          //   ],
          // ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 16,
            currentIndex: landingPageController.tabIndex.value,
            onTap: landingPageController.changeTabIndex,
            items: [
              bottomNavItem(
                imgPath: Assets.bottomChats,
                isSelected: landingPageController.tabIndex == 0,
                toolTip: 'My Closet',
              ),
              bottomNavItem(
                imgPath: Assets.bottomChat,
                isSelected: landingPageController.tabIndex == 1,
                toolTip: 'Match Kids',
              ),
              bottomNavItem(
                imgPath: Assets.bottomContacts,
                isSelected: landingPageController.tabIndex == 2,
                toolTip: 'Calender',
              ),
              bottomNavItem(
                imgPath: Assets.bottomProfile,
                isSelected: landingPageController.tabIndex == 3,
                toolTip: 'Explore',
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
