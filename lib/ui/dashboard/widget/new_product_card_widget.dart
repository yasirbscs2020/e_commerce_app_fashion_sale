import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewProductCardHomeWidget extends StatelessWidget {
  const NewProductCardHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215.h,
      width: 156.w,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: ColorPathConstants.lightGrey),
      child: Image.asset(
        ImagePathConstants.dashBoardDummy2,
      ),
    );
  }
}
