import 'package:chat_influencer/controllers/bottombar_controller.dart';
import 'package:chat_influencer/views/pages/Auth/bottom_screens/chats.dart';
import 'package:chat_influencer/views/widgets/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  LandingPageController landingPageController = Get.put(
    LandingPageController(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: homePageAppBar(),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: bottomTabs(),
    );
  }

  // homePageAppBar() {
  //   return PreferredSize(
  //     preferredSize: CustomAppbar().preferredSize,
  //     child: CustomAppbar(
  //       getXtitle: true,
  //       accountButton: true,
  //       notificationButton: true,
  //     ),
  //   );
  // }

  bottomTabs() {
    return CustomGetXBottomBar(
      chats: ChatsPage(),
      chating: const ChatsPage(),
      contacts: const ChatsPage(),
      settings: const ChatsPage(),
    );
  }
}
