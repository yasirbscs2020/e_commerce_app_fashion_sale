import 'package:flutter/material.dart';

class CmsPrimaryButton extends StatelessWidget {
  const CmsPrimaryButton(
      {required this.text,
      this.width,
      this.color,
      required this.textStyle,
      this.height,
      this.onButtonPressed,
      Key? key})
      : super(key: key);
  final String text;
  final double? width;
  final Function()? onButtonPressed;
  final Color? color;
  final double? height;

  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: SizedBox(
        height: height,
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
  }
}
