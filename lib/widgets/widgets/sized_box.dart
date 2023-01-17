import 'package:flutter/cupertino.dart';

Widget cmsSizedBox({double height = 10, double width = 10}) {
  if (height != 10 && width == 10) {
    return SizedBox(
      height: height,
    );
  } else if (height == 10 && width != 10) {
    return SizedBox(
      width: width,
    );
  }
  return SizedBox(
    height: height,
    width: width,
  );
}
