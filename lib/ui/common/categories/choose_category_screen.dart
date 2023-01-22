import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/model/category/choose_category_model.dart';
import 'package:e_commerce_app_fashion_sale/ui/common/categories/widget/choose_category_widget.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseCategoryPage extends StatelessWidget {
  const ChooseCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(right: 10.w),
              height: 60.h,
              decoration: const BoxDecoration(
                color: ColorPathConstants.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: ColorPathConstants.lightGrey,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CmsBackButton(),
                  Text(
                    "Categories",
                    style: CmsTextStyle.getCustomTextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.search, size: 30.r),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CmsPrimaryButton(
                height: 48.h,
                text: "VIEW ALL ITEMS",
                color: ColorPathConstants.redColor,
                textStyle: CmsTextStyle.getCustomTextStyle(
                  color: ColorPathConstants.whiteColor,
                  fontSize: 14.sp,
                ),
                onButtonPressed: () {
                  // Navigator.pushNamed(context, RoutesName.search);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 20.h, bottom: 20.h),
              child: Text(
                "Choose category",
                style: CmsTextStyle.getCustomTextStyle(
                    fontSize: 15.sp, color: ColorPathConstants.greyColor),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  ChooseCategoryModel model = ChooseCategoryModel();
                  return Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.w),
                      child: ChooseCategoryWidget(chooseCategoryModel: model));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
