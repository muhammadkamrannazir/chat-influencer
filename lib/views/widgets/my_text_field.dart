import 'package:chat_influencer/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  String? hintText;
  String? errorText;
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  Function(String?)? onSaved;
  Widget? icon;
  bool? obscureText;
  bool? visibility;
  bool? dataFieldStyle;
  bool readOnly;
  Function? onShowPassword;
  String? prefixIcon;

  String? Function(String?)? validator;

  MyTextField({
    Key? key,
    required this.hintText,
    this.errorText,
    this.readOnly = false,
    this.keyboardType,
    this.textInputAction,
    this.onSaved,
    this.controller,
    this.icon,
    this.obscureText = false,
    this.visibility = false,
    this.dataFieldStyle = true,
    this.onShowPassword,
    this.validator,
    this.prefixIcon,
  }) : super(key: key);

  //  passController = Get.put(PassController());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // readOnly: readOnly,
      // autofocus: false,
      // controller: controller,
      // obscureText: obscureText!,
      // keyboardType: keyboardType,
      // textInputAction: textInputAction,
      // onSaved: onSaved,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      // focusNode: FocusNode(),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        // errorText: errorText,
        // border: border(),
        enabledBorder: enabledBorder(),
        // contentPadding: contentPadding(),
        hintText: hintText,
        // suffixIcon: visibilityIcon(),
        // prefixIcon: Image(
        //   image: AssetImage(prefixIcon!),
        // ),
        prefixIconConstraints: BoxConstraints(maxWidth: 22.w, minWidth: 22.w),

        hintStyle: hintStyle(),
      ),
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        // color: LABEL_TEXT_LIGHT_COLOR,
      ),
      validator: validator,
    );
  }

  border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      // borderSide: const BorderSide(color: LIGHT_COLOR),
    );
  }

  enabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(
        color: MyColor.blue,
      ),
    );
  }

  contentPadding() {
    return EdgeInsets.symmetric(
      vertical: 0.0,
      horizontal: 0.0,
    );
  }

  visibilityIcon() {
    return visibility == true
        ? InkWell(
            child: icon,
            onTap: () {
              onShowPassword!();
            },
          )
        : null;
  }

  hintStyle() {
    return TextStyle(
        fontSize: 12.sp, fontWeight: FontWeight.w300, color: MyColor.blueGrey);
  }

  void dissmissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
