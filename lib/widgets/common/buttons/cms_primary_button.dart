import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/csm_base_widget.dart';
import 'package:flutter/material.dart';

class CmsPrimaryButton extends StatelessWidget {
  const CmsPrimaryButton(
      {required this.text,
      required this.widthDivisionValue,
      required this.color,
      required this.textStyle,
      this.height = 50,
      this.onButtonPressed,
      Key? key})
      : super(key: key);
  final String text;
  final double widthDivisionValue;
  final Function()? onButtonPressed;
  final Color color;
  final double height;

  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return InkWell(
          onTap: onButtonPressed,
          child: Container(
            height: height,
            width: sizingInformation.screenSize.width / widthDivisionValue,
            decoration: BoxDecoration(
              color: ColorPathConstants.redColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              color: color,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
