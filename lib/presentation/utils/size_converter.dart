import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/extenstions/mediaquery_extension.dart';

class SizeConverter {
  static double originWidth = 411; // 394 이미지, 달력
  static double originHeight = 820;
  static double originLeft = 0;
  static double originRight = 0;
  static double originHorizontal = originLeft + originRight;
  static double originVertical = 0;

  static double getWidth(BuildContext context, double width) {
    return width / originWidth * MediaQueryExtension.screenWidth(context);
  }

  static double getHeight(BuildContext context, double height) {
    return height / originHeight * MediaQueryExtension.screenHeight(context);
  }

  static double getLeft(BuildContext context, double left) {
    return left / originLeft * MediaQueryExtension.screenLeft(context);
  }

  static double getRight(BuildContext context, double right) {
    return right / originRight * MediaQueryExtension.screenRight(context);
  }

  static double getHorizontal(BuildContext context, double horizontal) {
    return horizontal /
        originHorizontal *
        MediaQueryExtension.screenHorizontal(context);
  }

  static double getVertical(BuildContext context, double vertical) {
    return vertical /
        originVertical *
        MediaQueryExtension.screenVertical(context);
  }
}

// width: SizeConverter.getWidth(context, 400),
// height: SizeConverter.getHeight(context, 800),
