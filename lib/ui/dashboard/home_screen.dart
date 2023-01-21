import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/ui/dashboard/widget/new_product_card_widget.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.green,
                    child: Image.asset(
                      ImagePathConstants.dashBoardDummy1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 32.h,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 10.w, top: 20.h, right: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Fashion\nsale",
                              style: CmsTextStyle.getCustomTextStyle(
                                  fontSize: 48.sp,
                                  fontWeight: FontWeight.w800,
                                  color: ColorPathConstants.whiteColor)),
                          SizedBox(height: 20.h),
                          CmsPrimaryButton(
                            height: 36.h,
                            width: 160.w,
                            text: "Check",
                            color: ColorPathConstants.redColor,
                            textStyle: CmsTextStyle.getCustomTextStyle(
                                color: ColorPathConstants.whiteColor,
                                fontSize: 14.sp),
                            onButtonPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 27.h),
              ListTile(
                title: Text(
                  "New",
                  style: CmsTextStyle.getCustomTextStyle(
                      fontSize: 34.sp, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "You’ve never seen it before!",
                  style: CmsTextStyle.getCustomTextStyle(
                      fontSize: 12.sp, color: ColorPathConstants.greyColor),
                ),
                trailing: Text(
                  "View all",
                  style: CmsTextStyle.getCustomTextStyle(fontSize: 12.sp),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 340.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Row(
                        children: const [
                          NewProductCardHomeWidget(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
