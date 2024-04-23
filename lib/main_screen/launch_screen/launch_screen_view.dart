import 'dart:async';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/launch_screen/animated_word.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';

class MainLaunchScreenView extends StatefulWidget {
  const MainLaunchScreenView({Key? key}) : super(key: key);

  @override
  State<MainLaunchScreenView> createState() => _MainLaunchScreenViewState();
}

class _MainLaunchScreenViewState extends State<MainLaunchScreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final List<String> _alphabets = ['i', 'p', 'd', 'u', 'k'];
  final List<Animation<double>> _alphabetAnimations = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    // ipduk 애니메이션 초기화
    final double intervalStep = 1.0 / _alphabets.length;
    for (int i = 0; i < _alphabets.length; i++) {
      _alphabetAnimations.add(
        Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(
              i * intervalStep,
              (i + 1) * intervalStep,
              curve: Curves.easeInOut,
            ),
          ),
        ),
      );
    }

    _controller.forward();

    // MainLoginScreenView 이동
    Timer(const Duration(milliseconds: 6000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _alphabets.length,
                  (index) => AnimatedWord(
                    animation: _alphabetAnimations[index],
                    alphabet: _alphabets[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
