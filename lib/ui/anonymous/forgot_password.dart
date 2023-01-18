import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:e_commerce_app_fashion_sale/widgets/widgets/sized_box.dart';
import 'package:flutter/material.dart';

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
              cmsSizedBox(height: 15),
              const CmsBackButton(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 20, right: 10, bottom: 30),
                child: Text(
                  "Forgot password",
                  style: CmsTextStyle.getCustomTextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              cmsSizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      "Please, enter your email address. You will receive a link to create a new password via email.",
                      style: CmsTextStyle.getCustomTextStyle(fontSize: 14),
                    ),
                    cmsSizedBox(height: 15),
                    const CmsTextBoxWidget(
                        hintText: "email", labelText: "Email"),
                    cmsSizedBox(height: 50),
                    CmsPrimaryButton(
                      text: "SEND",
                      widthDivisionValue: 1,
                      color: ColorPathConstants.redColor,
                      textStyle: CmsTextStyle.getCustomTextStyle(
                        color: ColorPathConstants.whiteColor,
                        fontSize: 17,
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
