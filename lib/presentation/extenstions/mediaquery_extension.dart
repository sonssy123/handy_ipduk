import 'package:flutter/material.dart';

extension MediaQueryExtension on MediaQuery {
  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double screenLeft(BuildContext context) =>
      MediaQuery.of(context).padding.left;
  static double screenRight(BuildContext context) =>
      MediaQuery.of(context).padding.right;
  static double screenHorizontal(BuildContext context) =>
      MediaQuery.of(context).padding.horizontal;
  static double screenVertical(BuildContext context) =>
      MediaQuery.of(context).padding.vertical;
}

// print('sizer > ${MediaQueryExtension.screenSize(context)}');
// print('width > ${MediaQueryExtension.screenWidth(context)}');
// print('height > ${MediaQueryExtension.screenHeight(context)}');
