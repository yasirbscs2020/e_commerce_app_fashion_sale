import 'package:e_commerce_app_fashion_sale/constants/colors.dart';
import 'package:e_commerce_app_fashion_sale/widgets/common/csm_base_widget.dart';
import 'package:flutter/material.dart';

class CmsTextBoxWidget extends StatelessWidget {
  const CmsTextBoxWidget(
      {required this.hintText,
      required this.labelText,
      // required this.validator,
      // required this.controller,
      // required this.autovalidateMode,
      // this.suffixImage,
      // this.textBoxwidth,
      // this.isObscureText = false,
      // this.prefixIcon,
      // this.prefixImage,
      // this.suffixIcon,
      // this.inputType = TextInputType.text,
      // this.maxLine = 1,
      // this.maxlength,
      // this.isReadOnly = false,
      Key? key})
      : super(key: key);
  final String hintText;
  final String labelText;
  // final String? Function(String?)? validator;
  // final TextEditingController controller;
  // final AutovalidateMode autovalidateMode;
  // final bool isObscureText;
  // final Icon? prefixIcon;
  // final Image? prefixImage;
  // final IconButton? suffixIcon;
  // final TextInputType inputType;
  // final int maxLine;
  // final bool isReadOnly;
  // final int? maxlength;
  // final Image? suffixImage;
  // final double? textBoxwidth;
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(builder: (context, sizingInformation) {
      return Container(
        decoration: BoxDecoration(
          color: ColorPathConstants.whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: const TextStyle(color: ColorPathConstants.greyColor),
              hintStyle: const TextStyle(
                  fontSize: 16, color: ColorPathConstants.greyColor),
              hintText: hintText,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(12),
            ),
          ),
        ),
      );
    });
  }
}
