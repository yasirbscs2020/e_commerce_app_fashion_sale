import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerWithIcon extends StatelessWidget {
  const ContainerWithIcon({required this.imagePath, super.key});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 92.w,
      decoration: BoxDecoration(
          color: ColorPathConstants.whiteColor,
          borderRadius: BorderRadius.circular(24.r)),
      child: Center(
        child: Image.asset(imagePath, height: 24.h),
      ),
    );
  }
}
