// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRoundedButton extends StatelessWidget {
  final String name;
  // ---- ? means, height can be null
  double? height;
  double? width;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPressed;

  MyRoundedButton({
    Key? key,
    required this.name,
    this.height,
    this.color,
    this.textColor,
    this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        //----------------> ?? means if height is null then assign assign 50.h else apply user entered height
        height: height ?? 71.h,
        width: width ?? 381.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: color ?? Colors.blue,
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 16.sp,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
