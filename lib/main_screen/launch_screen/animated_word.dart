import 'package:flutter/material.dart';

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
        color = Colors.red;
        break;
      case 'p':
        color = Colors.red;
        break;
      case 'd':
        color = const Color.fromARGB(255, 0, 255, 170);
        break;
      case 'u':
        color = const Color.fromARGB(255, 0, 255, 170);
        break;
      case 'k':
        color = const Color.fromARGB(255, 0, 255, 170);
        break;
      default:
        color = const Color.fromARGB(255, 0, 255, 170);
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
