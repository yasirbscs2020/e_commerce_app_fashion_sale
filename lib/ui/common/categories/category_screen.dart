import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/model/category/women_category_model.dart';
import 'package:e_commerce_app_fashion_sale/ui/common/categories/widget/category_card_widget.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<CategoryPage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
            SizedBox(height: 12.h),
            Container(
              height: 44.h,
              color: ColorPathConstants.whiteColor,
              child: TabBar(
                indicatorColor: ColorPathConstants.redColor,
                controller: _tabController,
                tabs: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      'Women',
                      style: CmsTextStyle.getCustomTextStyle(fontSize: 16.sp),
                    ),
                  ),
                  Text(
                    'Men',
                    style: CmsTextStyle.getCustomTextStyle(fontSize: 16.sp),
                  ),
                  Text(
                    'Kids',
                    style: CmsTextStyle.getCustomTextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 100.h,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      children: [
                        Container(
                          height: 100.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: ColorPathConstants.redColor,
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "SUMMER SALES",
                                style: CmsTextStyle.getCustomTextStyle(
                                    color: ColorPathConstants.whiteColor,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Up to 50% off",
                                style: CmsTextStyle.getCustomTextStyle(
                                  color: ColorPathConstants.whiteColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Extra",
                          style: CmsTextStyle.getCustomTextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Extra",
                    style: CmsTextStyle.getCustomTextStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  WomenCategoryModel model = WomenCategoryModel();
                  return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 6.w, horizontal: 16.w),
                      child: CategoryCardWidget(womenCategoryModel: model));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
