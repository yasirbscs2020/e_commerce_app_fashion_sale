import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/core/route/routes_names.dart';
import 'package:e_commerce_app_fashion_sale/model/category/choose_category_model.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseCategoryWidget extends StatelessWidget {
  const ChooseCategoryWidget({required this.chooseCategoryModel, super.key});
  final ChooseCategoryModel chooseCategoryModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.catalogOneScreen);
      },
      child: Container(
        height: 80.h,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: ColorPathConstants.lightGrey,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              chooseCategoryModel.categoryName,
              style: CmsTextStyle.getCustomTextStyle(fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
