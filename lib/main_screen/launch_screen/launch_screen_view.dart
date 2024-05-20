import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/main_screen/launch_screen/animated_word.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';
import 'package:handy_ipduk/main_screen/common_notifier/user_store_notifier.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainLaunchScreenView extends ConsumerStatefulWidget {
  const MainLaunchScreenView({Key? key}) : super(key: key);

  @override
  ConsumerState<MainLaunchScreenView> createState() =>
      _MainLaunchScreenViewState();
}

class _MainLaunchScreenViewState extends ConsumerState<MainLaunchScreenView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<String> _alphabets = ['i', 'p', 'd', 'u', 'k'];
  final List<Animation<double>> _alphabetAnimations = [];

  void checkUserStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final email = prefs.getString('email') ?? '';

    final password = prefs.getString('password') ?? '';

    if (email.isEmpty && password.isEmpty) {
      Timer(const Duration(milliseconds: 5000), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
        );
      });
      return;
    }

    ref.read(userStoreProvider.notifier).login(
      email,
      password,
      onSuccess: () {
        Timer(const Duration(milliseconds: 5000), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainTabScreenView()),
          );
        });
      },
      onFailure: (error) {
        Timer(const Duration(milliseconds: 5000), () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const MainLoginScreenView()),
          );
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    checkUserStatus();

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
