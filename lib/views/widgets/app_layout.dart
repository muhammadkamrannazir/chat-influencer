// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class MyAppLayout extends StatelessWidget {
//   String title;
//   Widget child;
//   void Function()? onCancel;
//   void Function()? onCreateSection;
//   bool? fieldDisplay;
//   MyAppLayout({
//     required this.title,
//     required this.child,
//     this.onCancel,
//     this.onCreateSection,
//     this.fieldDisplay,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             MyColor.red,
//             MyColor.lightRed,
//           ],
//         ),
//       ),
//       child: ListView(
//         // mainAxisSize: MainAxisSize.max,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 40.h),
//           MyText(
//             text: title,
//             fontWeight: FontWeight.w700,
//             fontSize: 18.sp,
//             color: Colors.white,
//           ),
//           SizedBox(height: 29.h),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               width: double.infinity,
//               height: 718.h,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40.r),
//                   topRight: Radius.circular(40.r),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 17.w),
//                 child: Column(
//                   children: [
//                     child,
//                     fieldDisplay == true
//                         ? Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               MyText(
//                                 text: 'Section Description',
//                                 fontWeight: FontWeight.w700,
//                               ),
//                               const BorderLessField(),
//                               SizedBox(height: 15.h),
//                             ],
//                           )
//                         : const SizedBox(),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             MyRoundedButton(
//                               height: 42.h,
//                               width: 120.w,
//                               name: 'Cancel',
//                               isGradient: false,
//                               textColor: Colors.black,
//                               onPressed: () {},
//                               color: Colors.grey[300],
//                             ),
//                             SizedBox(width: 15.w),
//                             MyRoundedButton(
//                               height: 42.h,
//                               width: 190.w,
//                               name: 'Create Section',
//                               isGradient: true,
//                               onPressed: () {
//                                 Get.to(EducationLevels());
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
