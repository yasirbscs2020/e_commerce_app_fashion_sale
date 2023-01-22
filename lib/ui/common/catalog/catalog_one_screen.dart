import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogOnePage extends StatelessWidget {
  const CatalogOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CmsBackButton(),
                Padding(
                  padding: EdgeInsets.only(right: 15.w),
                  child: Icon(Icons.search, size: 30.r),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 30.h, bottom: 20.h),
              child: Text(
                'Women’s tops',
                style: CmsTextStyle.getCustomTextStyle(fontSize: 34.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: CmsPrimaryButton(
                        height: 30.h,
                        width: 100.w,
                        text: "T-shirts",
                        color: ColorPathConstants.blackColor,
                        textStyle: CmsTextStyle.getCustomTextStyle(
                          color: ColorPathConstants.whiteColor,
                          fontSize: 14.sp,
                        ),
                        onButtonPressed: () {
                          // Navigator.pushNamed(context, RoutesName.signup);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
