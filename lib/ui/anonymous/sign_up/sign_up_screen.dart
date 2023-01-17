import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:e_commerce_app_fashion_sale/widgets/widgets/sized_box.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CmsBackButton(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 20, bottom: 30, right: 10),
                child: Text(
                  "Sign Up",
                  style: CmsTextStyle.getCustomTextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              cmsSizedBox(),
              Form(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: Column(
                    children: [
                      const CmsTextBoxWidget(
                          hintText: "name", labelText: "Name"),
                      cmsSizedBox(),
                      const CmsTextBoxWidget(
                          hintText: "email", labelText: "Email"),
                      cmsSizedBox(),
                      const CmsTextBoxWidget(
                          hintText: "password", labelText: "Password"),
                      cmsSizedBox(height: 15),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Already have an account?",
                              style:
                                  CmsTextStyle.getCustomTextStyle(fontSize: 15),
                            ),
                            const Icon(
                              Icons.arrow_right_alt_rounded,
                              color: ColorPathConstants.redColor,
                            ),
                          ],
                        ),
                      ),
                      cmsSizedBox(height: 20),
                      CmsPrimaryButton(
                        text: "SIGN UP",
                        widthDivisionValue: 1,
                        color: ColorPathConstants.redColor,
                        textStyle: CmsTextStyle.getCustomTextStyle(
                          color: ColorPathConstants.whiteColor,
                          fontSize: 17,
                        ),
                        onButtonPressed: () {},
                      ),
                      cmsSizedBox(height: 35),
                      Text(
                        "Or sign up with social account",
                        style: CmsTextStyle.getCustomTextStyle(fontSize: 15),
                      ),
                      cmsSizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 15, bottom: 15),
                            decoration: BoxDecoration(
                                color: ColorPathConstants.whiteColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                                ImagePathConstants.googleIconPath,
                                height: 25),
                          ),
                          cmsSizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 20, bottom: 20),
                            decoration: BoxDecoration(
                                color: ColorPathConstants.whiteColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                                ImagePathConstants.faceBookIconPath,
                                height: 25),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
