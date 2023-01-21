import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NewProductCardHomeWidget extends StatefulWidget {
  const NewProductCardHomeWidget({Key? key}) : super(key: key);

  @override
  State<NewProductCardHomeWidget> createState() =>
      _NewProductCardHomeWidgetState();
}

class _NewProductCardHomeWidgetState extends State<NewProductCardHomeWidget> {
  var rating = 1.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 170.w,
              padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 5.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorPathConstants.lightGrey),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CmsPrimaryButton(
                    height: 24.h,
                    width: 40.w,
                    text: "NEW",
                    color: ColorPathConstants.blackColor,
                    textStyle: CmsTextStyle.getCustomTextStyle(
                      color: ColorPathConstants.whiteColor,
                      fontSize: 11.sp,
                    ),
                    onButtonPressed: () {},
                  ),
                  Expanded(
                    child: Image.asset(
                      ImagePathConstants.dashBoardDummy2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SmoothStarRating(
                      rating: rating,
                      isReadOnly: false,
                      size: 18.r,
                      filledIconData: Icons.star,
                      defaultIconData: Icons.star_border_rounded,
                      color: ColorPathConstants.greyColor,
                      borderColor: ColorPathConstants.greyColor,
                      starCount: 5,
                      allowHalfRating: true,
                      onRated: (value) {
                        if (kDebugMode) {
                          print("rating value -> $value");
                        }
                      },
                    ),
                    SizedBox(width: 2.w),
                    Text("(0)",
                        style: CmsTextStyle.getCustomTextStyle(
                            fontSize: 12.sp,
                            color: ColorPathConstants.greyColor))
                  ],
                ),
                SizedBox(height: 3.h),
                Text("OVS",
                    style: CmsTextStyle.getCustomTextStyle(
                        fontSize: 12.sp, color: ColorPathConstants.greyColor)),
                SizedBox(height: 3.h),
                Text("Blouse",
                    style: CmsTextStyle.getCustomTextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w500)),
                SizedBox(height: 3.h),
                Text('30\$',
                    style: CmsTextStyle.getCustomTextStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: 85.h,
          right: -5,
          child: Container(
            height: 36.h,
            width: 36.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: ColorPathConstants.whiteColor),
            child: Icon(Icons.favorite_border,
                color: ColorPathConstants.greyColor, size: 15.r),
          ),
        ),
      ],
    );
  }
}
