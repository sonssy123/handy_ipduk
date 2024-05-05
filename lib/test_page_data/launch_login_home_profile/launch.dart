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













/*

Launch 화면



1. Authentication 에서 User 정보가 있는지 확인 ()


2. 이전에 로그아웃을 했는지, 안했는지 두가지 경우 확인


  - [1]. 로그아웃을 하지 않았을 경우 ()

    : (1). SharedPreferences 으로 이전 상태를 반영 ()

    : (2). 해당 User 의 정보를 가져오기 ()

    : (3). 자동 로그인 ()

    : (4). Home 화면으로 이동 ()



  - [2]. 로그아웃을 했을 경우

    : (1). Login 화면으로 이동 ()

*/
