import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // for the project, I have used a layout height of 812
  return (inputHeight / 812.0) * screenHeight;
}

// get the proportionateScreenWidth as per screen size
double getProportionateScreenHWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // for the project, I have used a layout height of 375
  return (inputWidth / 375.0) * screenWidth;
}
