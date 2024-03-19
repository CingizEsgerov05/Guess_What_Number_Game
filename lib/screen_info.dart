import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenInfo {
  var screenHeight = WidgetsBinding
      .instance.platformDispatcher.views.first.physicalSize.height;
  var screenWidth =
      WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.width;
}
