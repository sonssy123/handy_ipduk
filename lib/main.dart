import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/firebase_options.dart';
import 'package:handy_ipduk/main_screen/launch_screen/launch_screen_view.dart';
import 'package:handy_ipduk/theme_data.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: HandyIpduk()));
}

class HandyIpduk extends StatelessWidget {
  const HandyIpduk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: themeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,
      home: const MainLaunchScreenView(),
    );
  }
}

/*

final themeData = ThemeData(
    colorScheme: const ColorScheme.light(
        background: Colors.white,
        primary: Color.fromARGB(255, 7, 7, 7), // 버튼 배경
        onPrimary: Colors.white), // 버튼 텍스트
    fontFamily: 'PRETENDARD',
    textTheme:
        const TextTheme(bodyMedium: TextStyle(color: Colors.black))); // 테마 배경

final darkThemeData = ThemeData(
    colorScheme: const ColorScheme.dark(
        background: Colors.black,
        primary: Color.fromARGB(255, 0, 255, 170), // 버튼 배경
        onPrimary: Colors.black), // 버튼 텍스트
    fontFamily: 'PRETENDARD',
    textTheme:
        const TextTheme(bodyMedium: TextStyle(color: Colors.white))); // 테마 배경

*/
