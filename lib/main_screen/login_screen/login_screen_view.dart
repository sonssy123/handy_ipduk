import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainLoginScreenView extends StatefulWidget {
  const MainLoginScreenView({super.key});

  @override
  State<MainLoginScreenView> createState() => _MainLoginScreenViewState();
}

class _MainLoginScreenViewState extends State<MainLoginScreenView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
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
          MaterialPageRoute(builder: (context) => const MainTabScreenView()),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: SizeConverter.getHeight(context, 70)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50), // ID 창 길이 조정
                  child: TextField(
                    controller: _emailController,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'ID를 입력해주세요',
                      hintStyle: const TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConverter.getHeight(context, 20)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50), // PW 창 길이 조정
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'PW를 입력해주세요',
                      hintStyle: const TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConverter.getHeight(context, 50)),
                ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: ColorExtension.accentColor,
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 8, 236, 205)),
                    ),
                  ),
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
