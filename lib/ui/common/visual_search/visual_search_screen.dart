import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VisualSearchPage extends StatelessWidget {
  const VisualSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 60.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CmsBackButton(),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Visual search",
                        style: CmsTextStyle.getCustomTextStyle(fontSize: 18.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.green,
                    child: Image.asset(
                      ImagePathConstants.visualSearchBackGrounImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 14.w, top: 20.h, right: 14.h),
                          child: Text(
                            "Search for an outfit by taking a photo or uploading an image",
                            style: CmsTextStyle.getCustomTextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorPathConstants.whiteColor),
                          ),
                        ),
                        SizedBox(height: 28.h),
                        CmsPrimaryButton(
                          height: 48.h,
                          text: "TAKE A PHOTO",
                          color: ColorPathConstants.redColor,
                          textStyle: CmsTextStyle.getCustomTextStyle(
                            color: ColorPathConstants.whiteColor,
                            fontSize: 14.sp,
                          ),
                          onButtonPressed: () {},
                        ),
                        SizedBox(height: 16.h),
                        CmsPrimaryButton(
                          height: 48.h,
                          border: Border.all(
                              width: 1, color: ColorPathConstants.whiteColor),
                          text: "UPLOAD AN IMAGE",
                          textStyle: CmsTextStyle.getCustomTextStyle(
                            color: ColorPathConstants.whiteColor,
                            fontSize: 14.sp,
                          ),
                          onButtonPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
