import 'dart:ui';

class Helper{
  // px像素
  static final screenWithPx = window.physicalSize.width;
  static final screenHeightPx = window.physicalSize.height;

  // ios 点像素
  static final screenWith = screenWithPx/2;
  static final screenHeight = screenHeightPx/2;

}

