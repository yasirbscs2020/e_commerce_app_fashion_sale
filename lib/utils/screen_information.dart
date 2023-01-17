import 'package:flutter/cupertino.dart';
import 'enums/device_screen_type.dart';

class SizingInformation {
  Orientation orientation = Orientation.portrait;
  DeviceScreenType deviceScreenType = DeviceScreenType.mobile;
  Size screenSize = const Size(0, 0);
  Size localWidgetSize = const Size(0, 0);

  SizingInformation(this.orientation, this.deviceScreenType, this.screenSize,
      this.localWidgetSize);

  @override
  String toString() {
    return 'orientation: $orientation deviceScreenType $deviceScreenType screenSize $screenSize localWidgetSize $localWidgetSize';
  }
}
