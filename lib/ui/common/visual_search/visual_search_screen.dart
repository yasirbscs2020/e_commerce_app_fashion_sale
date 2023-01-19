import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/constants/consts_image_paths.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/back_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/buttons/cms_primary_button.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/csm_base_widget.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/text_styles/cms_text_style.dart';
import 'package:e_commerce_app_fashion_sale/widgets/widgets/sized_box.dart';
import 'package:flutter/material.dart';

class VisualSearchPage extends StatelessWidget {
  const VisualSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: sizingInformation.screenSize.height / 12,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CmsBackButton(),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Visual search",
                            style:
                                CmsTextStyle.getCustomTextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.green,
                        child: Image.asset(
                          ImagePathConstants.visualSearchBackGrounImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Search for an outfit by taking a photo or uploading an image",
                                style: CmsTextStyle.getCustomTextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    color: ColorPathConstants.whiteColor),
                              ),
                            ),
                            cmsSizedBox(height: 20),
                            CmsPrimaryButton(
                              text: "TAKE A PHOTO",
                              color: ColorPathConstants.redColor,
                              textStyle: CmsTextStyle.getCustomTextStyle(
                                color: ColorPathConstants.whiteColor,
                                fontSize: 14,
                              ),
                              onButtonPressed: () {},
                            ),
                            cmsSizedBox(),
                            Container(
                              height: sizingInformation.screenSize.height / 13,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: ColorPathConstants.whiteColor),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Text(
                                  "UPLOAD AN IMAGE",
                                  style: CmsTextStyle.getCustomTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: ColorPathConstants.whiteColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
