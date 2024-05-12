import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/launch_screen/animated_word.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

  void checkUserStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print('로그인 정보 확인 중 입니다');

    final currentUser = _auth.currentUser;
    final bool didLogout = prefs.getBool('didLogout') ?? false;
    final bool isLoggedIn = currentUser != null && !didLogout;

    if (isLoggedIn) {
      Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainTabScreenView()),
      );
      print('이미 로그인 정보가 있습니다');
    } else {
      Timer(const Duration(milliseconds: 6000), () {
        Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
        );
      });
      print('로그인 정보가 없거나 로그아웃된 계정입니다');
    }
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
        key: _scaffoldKey,
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
