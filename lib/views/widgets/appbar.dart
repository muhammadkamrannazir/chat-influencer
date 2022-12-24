// import 'package:chat_influencer/controllers/bottombar_controller.dart';
// import 'package:chat_influencer/utils/app_images.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// const _style = TextStyle(color: Colors.white);

// class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Size get preferredSize => Size.fromHeight(56.h);
//   final String? title;
//   final bool? getXtitle;
//   final bool backGoing;
//   final bool? scanner;
//   final bool? sneakerDatabase;
//   final bool? userProfile;
//   final bool? logOut;
//   final Color? color;
//   const CustomAppbar({
//     this.title,
//     this.color,
//     this.getXtitle = false,
//     this.backGoing = true,
//     this.scanner = false,
//     this.sneakerDatabase = false,
//     this.userProfile = false,
//     this.logOut = false,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     LandingPageController landingPageController =
//         Get.put(LandingPageController());
//     return Container(
//       color: color ?? Colors.white,
//       child: AppBar(
//         backgroundColor: Colors.blue,
//         automaticallyImplyLeading: backGoing,
//         title: Text(
//           getXtitle == true ? '${landingPageController.title}' : title!,
//           style: _style,
//         ),
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             bottomRight: Radius.circular(12.r),
//             bottomLeft: Radius.circular(12.r),
//           ),
//         ),
//         iconTheme: const IconThemeData(color: Colors.white),
//         actions: [
//           sneakerDatabase == true
//               ? IconButton(
//                   onPressed: () {
//                   },
//                   icon: Image(
//                     height: 24.h,
//                     width: 24.w,
//                     image:  AssetImage(Assets.email),
//                   ),
//                 )
//               : const SizedBox(),
//           userProfile == true
//               ? IconButton(
//                   onPressed: () {
//                     landingPageController.changeTabIndex(4);
//                   },
//                   icon: Image(
//                     height: 24.h,
//                     width: 24.w,
//                     image:  AssetImage(Assets.profile),
//                   ),
//                 )
//               : const SizedBox(),
//           logOut == true
//               ? IconButton(
//                   onPressed: () {
//                   },
//                   // onPressed: () => Get.offAll(Login()),
//                   icon: Image(
//                     height: 24.h,
//                     width: 24.w,
//                     image: AssetImage(Assets.email),
//                   ),
//                 )
//               : const SizedBox(),
//           scanner == true
//               ? IconButton(
//                   onPressed: () {
//                   },
//                   icon: Image(
//                     height: 24.h,
//                     width: 24.w,
//                     image: AssetImage(Assets.email),
//                   ),
//                 )
//               : const SizedBox(),
//           SizedBox(
//             width: 8.w,
//           )
//         ],
//       ),
//     );
//   }
// }
