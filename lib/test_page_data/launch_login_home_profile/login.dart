import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> _login() async {
    final email = _emailController.text;
    final password = _passwordController.text;

    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = userCredential.user;
      if (user != null) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool('didLogout', false);
        print('User ID: ${user.uid}');
        print('로그인 되었습니다');
        Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Login 화면'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('로그인'),
            ),
          ],
        ),
      ),
    );
  }
}
