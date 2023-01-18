import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/ui/anonymous/forgot_password.dart';
import 'package:e_commerce_app_fashion_sale/ui/anonymous/widget/container_with_icon_widget.dart';
import 'package:e_commerce_app_fashion_sale/ui/common/visual_search/visual_search_screen.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:e_commerce_app_fashion_sale/widgets/widgets/sized_box.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cmsSizedBox(height: 15),
            const CmsBackButton(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 20, right: 10, bottom: 30),
              child: Text(
                "Login",
                style: CmsTextStyle.getCustomTextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Column(
                children: [
                  cmsSizedBox(),
                  const CmsTextBoxWidget(hintText: "email", labelText: "Email"),
                  cmsSizedBox(),
                  const CmsTextBoxWidget(
                      hintText: "password", labelText: "Password"),
                  cmsSizedBox(height: 15),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forgot your password?",
                          style: CmsTextStyle.getCustomTextStyle(fontSize: 15),
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
                    text: "LOGIN",
                    widthDivisionValue: 1,
                    color: ColorPathConstants.redColor,
                    textStyle: CmsTextStyle.getCustomTextStyle(
                      color: ColorPathConstants.whiteColor,
                      fontSize: 17,
                    ),
                    onButtonPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VisualSearchPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Or login with social account",
                style: CmsTextStyle.getCustomTextStyle(fontSize: 15),
              ),
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
              ],
            ),
            cmsSizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
