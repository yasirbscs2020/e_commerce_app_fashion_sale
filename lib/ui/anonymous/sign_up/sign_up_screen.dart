import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/core/route/login_page_arguments.dart';
import 'package:e_commerce_app_fashion_sale/core/route/routes_names.dart';
import 'package:e_commerce_app_fashion_sale/ui/anonymous/widget/container_with_icon_widget.dart';
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
              cmsSizedBox(height: 15),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.login,
                              arguments: LoginPageArguments("From Sign up"));
                        },
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
                          const ContainerWithIcon(
                              imagePath: ImagePathConstants.googleIconPath),
                          cmsSizedBox(width: 15),
                          const ContainerWithIcon(
                              imagePath: ImagePathConstants.faceBookIconPath),
                          cmsSizedBox(width: 25),
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
