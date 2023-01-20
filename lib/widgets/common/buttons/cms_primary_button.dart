import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CmsPrimaryButton extends StatelessWidget {
  const CmsPrimaryButton(
      {required this.text,
      this.border,
      this.width,
      this.color,
      required this.textStyle,
      this.height,
      this.onButtonPressed,
      Key? key})
      : super(key: key);
  final String text;
  final double? width;
  final Function()? onButtonPressed;
  final Color? color;
  final double? height;
  final Border? border;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        height: 48.h,
        width: width,
        decoration: BoxDecoration(
            color: color,
            border: border,
            borderRadius: BorderRadius.circular(25.r)),
        child: Center(
          child: Text(
            text,
            style: CmsTextStyle.getCustomTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorPathConstants.whiteColor),
          ),
        ),
      ),
    );
  }
}
