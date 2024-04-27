import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'dart:math' as math;
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({Key? key}) : super(key: key);

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildShakingBox(_controller.value * math.pi * 2, 0),
                _buildShakingBox(_controller.value * math.pi * 2, 1),
                _buildShakingBox(_controller.value * math.pi * 2, 2),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildShakingBox(double angle, int index) {
    double offset = 10.0; // 흔들리는 거리
    double topOffset = math.sin(angle + (index * math.pi / 3)) * offset;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Transform.translate(
        offset: Offset(0, topOffset),
        child: Container(
          width: SizeConverter.getWidth(context, 10), // 로딩바 너비
          height: SizeConverter.getHeight(context, 40), // 로딩바 높이
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorExtension.accentColor, // 시작 생상
                const Color.fromARGB(255, 8, 202, 236).withOpacity(0.2), // 끝 색상
              ],
              begin: Alignment.topCenter, // 그라데이션 시작 위치
              end: Alignment.bottomCenter, // 그라데이션 끝 위치
            ),
          ),
        ),
      ),
    );
  }
}
