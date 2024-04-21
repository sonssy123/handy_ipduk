import 'dart:async';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';

class MainLaunchScreenView extends StatefulWidget {
  const MainLaunchScreenView({super.key});

  @override
  State<MainLaunchScreenView> createState() => _MainLaunchScreenViewState();
}

class _MainLaunchScreenViewState extends State<MainLaunchScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 10000), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MainLoginScreenView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 216, 253),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, size: 100, color: Colors.black),
                    SizedBox(width: 20),
                    Text(
                      'ipduk',
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                  ],
                ),
                Text(
                  'ipduk@hhhh.com',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LaunchButton extends StatelessWidget {
  const LaunchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
        );
      },
      child: const Text('Login 화면으로 이동'),
    );
  }
}
