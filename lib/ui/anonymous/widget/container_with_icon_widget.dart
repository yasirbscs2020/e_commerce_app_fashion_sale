import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/csm_base_widget.dart';
import 'package:flutter/material.dart';

class ContainerWithIcon extends StatelessWidget {
  const ContainerWithIcon({required this.imagePath, super.key});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return Container(
          height: sizingInformation.screenSize.width / 6,
          width: sizingInformation.screenSize.width / 4.5,
          decoration: BoxDecoration(
              color: ColorPathConstants.whiteColor,
              borderRadius: BorderRadius.circular(22)),
          child: Center(
            child: Image.asset(imagePath, height: 25),
          ),
        );
      },
    );
  }
}
