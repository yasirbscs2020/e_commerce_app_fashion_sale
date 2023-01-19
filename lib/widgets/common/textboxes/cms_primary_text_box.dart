import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/csm_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CmsTextBoxWidget extends StatelessWidget {
  const CmsTextBoxWidget(
      {required this.hintText,
      required this.labelText,
      // required this.validator,
      // required this.controller,
      // required this.autovalidateMode,
      // this.suffixImage,
      // this.textBoxwidth,
      // this.isObscureText = false,
      // this.prefixIcon,
      // this.prefixImage,
      // this.suffixIcon,
      // this.inputType = TextInputType.text,
      // this.maxLine = 1,
      // this.maxlength,
      // this.isReadOnly = false,
      Key? key})
      : super(key: key);
  final String hintText;
  final String labelText;
  // final String? Function(String?)? validator;
  // final TextEditingController controller;
  // final AutovalidateMode autovalidateMode;
  // final bool isObscureText;
  // final Icon? prefixIcon;
  // final Image? prefixImage;
  // final IconButton? suffixIcon;
  // final TextInputType inputType;
  // final int maxLine;
  // final bool isReadOnly;
  // final int? maxlength;
  // final Image? suffixImage;
  // final double? textBoxwidth;
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(builder: (context, sizingInformation) {
      return Container(
        height: 64.h,
        decoration: BoxDecoration(
          color: ColorPathConstants.whiteColor,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Center(
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                  color: ColorPathConstants.greyColor, fontSize: 12.sp),
              hintStyle: TextStyle(
                  fontSize: 14.sp, color: ColorPathConstants.greyColor),
              hintText: hintText,
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            ),
          ),
        ),
      );
    });
  }
}
