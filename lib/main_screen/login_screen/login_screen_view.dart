import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';

class MainLoginScreenView extends StatefulWidget {
  const MainLoginScreenView({super.key});

  @override
  State<MainLoginScreenView> createState() => _MainLoginScreenViewState();
}

class _MainLoginScreenViewState extends State<MainLoginScreenView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login 화면'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const LoginButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainTabScreenView()),
        );
      },
      // style: ElevatedButton.styleFrom(
      //   foregroundColor: Colors.black,
      //   backgroundColor: ColorExtension.accentColor,
      // ),
      child: const Text('Main Tab(Home 화면)으로 이동'),
    );
  }
}
