import 'dart:math';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_image.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class MainLoginScreenView extends StatefulWidget {
  const MainLoginScreenView({super.key});

  @override
  State<MainLoginScreenView> createState() => _MainLoginScreenViewState();
}

class _MainLoginScreenViewState extends State<MainLoginScreenView> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  String _getRandomImageUrl() {
    final random = Random();
    const values = ImageId.values;
    final randomIndex = random.nextInt(values.length);
    return ImageData.getImageUrl(values[randomIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: SizeConverter.getWidth(context, 330),
                  height: SizeConverter.getHeight(context, 700),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 17, 17, 17),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConverter.getWidth(context, 310),
                        height: SizeConverter.getHeight(context, 680),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              _getRandomImageUrl(), // 랜덤 이미지 URL 선택
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Login',
                              style: TextStyle(
                                color: Color.fromARGB(255, 8, 236, 205),
                                fontSize: 40,
                              ),
                            ),
                            SizedBox(
                                height: SizeConverter.getHeight(context, 60)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: _idController,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'ID를 입력해주세요',
                                  hintStyle:
                                      const TextStyle(color: Colors.white54),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: SizeConverter.getHeight(context, 20)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: TextField(
                                controller: _pwController,
                                obscureText: true,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: 'PW를 입력해주세요',
                                  hintStyle:
                                      const TextStyle(color: Colors.white54),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: SizeConverter.getHeight(context, 40)),
                            SizedBox(
                              width: SizeConverter.getWidth(context, 200),
                              child: const LoginButton(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorExtension.accentColor,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Color.fromARGB(255, 8, 236, 205)),
        ),
      ),
      child: const Text('Sign In'),
    );
  }
}
