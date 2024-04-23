import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';

class AnimatedWord extends StatelessWidget {
  final Animation<double> animation;
  final String alphabet;

  const AnimatedWord({
    Key? key,
    required this.animation,
    required this.alphabet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (alphabet) {
      case 'i':
        color = ColorExtension.accentColor;
        break;
      case 'p':
        color = ColorExtension.accentColor;
        break;
      case 'd':
        color = ColorExtension.accentColor;
        break;
      case 'u':
        color = ColorExtension.accentColor;
        break;
      case 'k':
        color = ColorExtension.accentColor;
        break;
      default:
        color = ColorExtension.accentColor;
        break;
    }

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(50 * (1 - animation.value), 0),
          child: Opacity(
            opacity: animation.value,
            child: Text(
              alphabet,
              style: TextStyle(
                fontSize: 100,
                color: color,
              ),
            ),
          ),
        );
      },
    );
  }
}
