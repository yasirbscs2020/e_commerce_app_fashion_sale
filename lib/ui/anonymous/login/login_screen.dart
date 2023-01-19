import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/core/route/routes_names.dart';
import 'package:e_commerce_app_fashion_sale/ui/anonymous/widget/container_with_icon_widget.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:e_commerce_app_fashion_sale/widgets/widgets/sized_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  final String title;
  const LoginPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Title come $title");
    }
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const CmsBackButton(),
              Padding(
                padding: EdgeInsets.only(
                    left: 14.w, top: 30.h, bottom: 50.h, right: 14.h),
                child: Text(
                  "Login",
                  style: CmsTextStyle.getCustomTextStyle(
                      fontSize: 34.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Column(
                  children: [
                    const CmsTextBoxWidget(
                        hintText: "email", labelText: "Email"),
                    SizedBox(height: 8.h),
                    const CmsTextBoxWidget(
                        hintText: "password", labelText: "Password"),
                    SizedBox(height: 16.h),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.forgotPassword);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot your password?",
                            style: CmsTextStyle.getCustomTextStyle(
                                fontSize: 14.sp),
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            color: ColorPathConstants.redColor,
                            size: 15.r,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    CmsPrimaryButton(
                      height: 48.h,
                      text: "LOGIN",
                      color: ColorPathConstants.redColor,
                      textStyle: CmsTextStyle.getCustomTextStyle(
                        color: ColorPathConstants.whiteColor,
                        fontSize: 14.sp,
                      ),
                      onButtonPressed: () {
                        Navigator.pushNamed(context, RoutesName.search);
                      },
                    ),
                    SizedBox(height: 8.h),
                    CmsPrimaryButton(
                      height: 48.h,
                      text: "SIGN UP",
                      color: ColorPathConstants.redColor,
                      textStyle: CmsTextStyle.getCustomTextStyle(
                        color: ColorPathConstants.whiteColor,
                        fontSize: 14.sp,
                      ),
                      onButtonPressed: () {
                        Navigator.pushNamed(context, RoutesName.signup);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Or login with social account",
                  style: CmsTextStyle.getCustomTextStyle(fontSize: 14.sp),
                ),
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ContainerWithIcon(
                      imagePath: ImagePathConstants.googleIconPath),
                  SizedBox(width: 16.w),
                  const ContainerWithIcon(
                      imagePath: ImagePathConstants.faceBookIconPath),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
