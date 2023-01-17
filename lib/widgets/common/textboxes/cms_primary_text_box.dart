import 'package:e_commerce_app_fashion_sale/widgets/common/csm_base_widget.dart';
import 'package:flutter/material.dart';

class CmsTextBoxWidget extends StatelessWidget {
  const CmsTextBoxWidget(
      {required this.hintText,
      required this.validator,
      required this.controller,
      required this.autovalidateMode,
      this.suffixImage,
      this.textBoxwidth,
      this.isObscureText = false,
      this.prefixIcon,
      this.prefixImage,
      this.suffixIcon,
      this.inputType = TextInputType.text,
      this.maxLine = 1,
      this.maxlength,
      this.isReadOnly = false,
      Key? key})
      : super(key: key);
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final AutovalidateMode autovalidateMode;
  final bool isObscureText;
  final Icon? prefixIcon;
  final Image? prefixImage;
  final IconButton? suffixIcon;
  final TextInputType inputType;
  final int maxLine;
  final bool isReadOnly;
  final int? maxlength;
  final Image? suffixImage;
  final double? textBoxwidth;
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(builder: (context, sizingInformation) {
      return SizedBox(
        // height: 60,
        width: textBoxwidth,
        child: Center(
          child: TextFormField(
            autovalidateMode: autovalidateMode,
            controller: controller,
            validator: validator,
            obscureText: isObscureText,
            autofocus: false,
            keyboardType: inputType,
            maxLines: maxLine,
            maxLength: maxlength,
            readOnly: isReadOnly,
            decoration: InputDecoration(
              prefixIcon: prefixImage ?? prefixIcon,
              suffixIcon: suffixIcon ?? suffixImage,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: hintText,
              contentPadding: const EdgeInsets.fromLTRB(15.0, 0, 15, 0),
            ),
          ),
        ),
      );
    });
  }
}
