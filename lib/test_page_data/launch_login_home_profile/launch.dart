import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/login.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    checkUserStatus();
  }

  void checkUserStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print('로그인 정보 확인 중 입니다');

    final currentUser = _auth.currentUser;
    final bool didLogout = prefs.getBool('didLogout') ?? false;
    final bool isLoggedIn = currentUser != null && !didLogout;

    if (isLoggedIn) {
      Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => const Home()),
      );
      print('이미 로그인 정보가 있습니다');
    } else {
      Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
      print('로그인 정보가 없거나 로그아웃된 계정입니다');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Launch 화면'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
