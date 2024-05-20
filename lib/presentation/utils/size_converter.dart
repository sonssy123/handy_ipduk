import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/extenstions/mediaquery_extension.dart';

class SizeConverter {
  static double originWidth = 411;
  static double originHeight = 820;

  static double getWidth(BuildContext context, double width) {
    return width / originWidth * MediaQueryExtension.screenWidth(context);
  }

  static double getHeight(BuildContext context, double height) {
    return height / originHeight * MediaQueryExtension.screenHeight(context);
  }

  static double getWidthPercentage(BuildContext context, double percentage) {
    return MediaQueryExtension.screenWidth(context) * percentage;
  }

  static double getHeightPercentage(BuildContext context, double percentage) {
    return MediaQueryExtension.screenHeight(context) * percentage;
  }
}

// width: SizeConverter.getWidth(context, 400),
// height: SizeConverter.getHeight(context, 800),

// width: SizeConverter.getWidthPercentage(context, 0.02),
// height: SizeConverter.getHeightPercentage(context, 0.02),