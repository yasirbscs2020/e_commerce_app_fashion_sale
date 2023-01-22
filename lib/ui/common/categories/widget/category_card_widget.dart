import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/core/route/routes_names.dart';
import 'package:e_commerce_app_fashion_sale/model/category/women_category_model.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({required this.womenCategoryModel, super.key});
  final WomenCategoryModel womenCategoryModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.chooseCategory);
      },
      child: Container(
        height: 100.h,
        width: 343.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: ColorPathConstants.whiteColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 23.w),
                  child: Text(
                    womenCategoryModel.brandName,
                    style: CmsTextStyle.getCustomTextStyle(fontSize: 18.sp),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Image.asset(womenCategoryModel.image, fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}
