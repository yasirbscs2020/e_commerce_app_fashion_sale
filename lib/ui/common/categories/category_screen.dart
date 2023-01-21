import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
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
              height: 100.h,
              decoration: BoxDecoration(
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.grey.withOpacity(0.1),
                  //   spreadRadius: 1,
                  //   blurRadius: 1,
                  //   offset: Offset(1, 4), // changes position of shadow
                  // ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CmsBackButton(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 14.w, top: 20.h, bottom: 50.h, right: 14.h),
                    child: Text(
                      "Categories",
                      style: CmsTextStyle.getCustomTextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.search, size: 30.r),
                ],
              ),
            ),
            Container(
              height: 100,
              child: TabBar(
                indicatorColor: ColorPathConstants.redColor,
                controller: _tabController,
                tabs: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Text(
                      'Women',
                      style: CmsTextStyle.getCustomTextStyle(),
                    ),
                  ),
                  Text(
                    'Men',
                    style: CmsTextStyle.getCustomTextStyle(),
                  ),
                  Text(
                    'Kids',
                    style: CmsTextStyle.getCustomTextStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.6.h),
            Container(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Text("data"),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
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
          ],
        ),
      ),
    );
  }
}
