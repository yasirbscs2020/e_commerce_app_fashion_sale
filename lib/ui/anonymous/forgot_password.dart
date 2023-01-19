import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:e_commerce_app_fashion_sale/widgets/widgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cmsSizedBox(height: 20.h),
              const CmsBackButton(),
              Padding(
                padding: EdgeInsets.only(
                    left: 14.w, top: 20.h, bottom: 87.h, right: 14.h),
                child: Text(
                  "Forgot password",
                  style: CmsTextStyle.getCustomTextStyle(
                      fontSize: 34.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Column(
                  children: [
                    Text(
                      "Please, enter your email address. You will receive a link to create a new password via email.",
                      style: CmsTextStyle.getCustomTextStyle(fontSize: 14.sp),
                    ),
                    cmsSizedBox(height: 16.h),
                    const CmsTextBoxWidget(
                        hintText: "email", labelText: "Email"),
                    cmsSizedBox(height: 55.h),
                    CmsPrimaryButton(
                      height: 40.h,
                      text: "SEND",
                      color: ColorPathConstants.redColor,
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
      ),
    );
  }
}
