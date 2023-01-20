import 'package:e_commerce_app_fashion_sale/core/route/routes_names.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../core/route/login_page_arguments.dart';
import '../../widgets/common/buttons/cms_primary_button.dart';
import '../../widgets/common/text_styles/cms_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const Text("Home Page"),
          CmsPrimaryButton(
            text: "Dashboard",
            color: ColorPathConstants.redColor,
            textStyle: CmsTextStyle.getCustomTextStyle(
              color: ColorPathConstants.whiteColor,
              fontSize: 17,
            ),
            onButtonPressed: () {
              Navigator.pushNamed(context, RoutesName.dashboard,
                  arguments: LoginPageArguments("From Home Screen"));
            },
          ),
          SizedBox(height: 10),
          CmsPrimaryButton(
            text: "LOGIN",
            color: ColorPathConstants.redColor,
            textStyle: CmsTextStyle.getCustomTextStyle(
              color: ColorPathConstants.whiteColor,
              fontSize: 17,
            ),
            onButtonPressed: () {
              Navigator.pushNamed(context, RoutesName.login,
                  arguments: LoginPageArguments("From Home Screen"));
            },
          ),
        ],
      ),
    );
  }
}
