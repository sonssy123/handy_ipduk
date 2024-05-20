import 'package:flutter/material.dart';

extension MediaQueryExtension on MediaQuery {
  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

// print('sizer > ${MediaQueryExtension.screenSize(context)}');
// print('width > ${MediaQueryExtension.screenWidth(context)}');
// print('height > ${MediaQueryExtension.screenHeight(context)}');
