import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/firebase_options.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/launch.dart';
import 'package:handy_ipduk/theme_data.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HandyIpduk());
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
      home: const Launch(),
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

/*

Profile 화면



1. Authentication 에서 User 정보가 있는지 확인 ()


2. User 의 profile_image_url 받아오기 ()

  - [1]. 해당 User 의 profile_image_url을 원 안에 이미지로 출력 ()



3. User 의 name 받아오기 ()

  - [1]. 해당 User 의 name을 텍스트로 출력 ()













4. 로그인 정보가 맞는지, 아닌지 두가지 경우 확인


  - [1]. User 정보가 일치 하지 않았을 경우 ()

    : (1). SharedPreferences 으로 이전 상태를 반영 ()

    : (2). 해당 User 의 정보를 가져오기 ()

    : (3). 자동 로그인 ()

    : (4). Home 화면으로 이동 ()



  - [2]. User 정보가 일치할 경우

    : (1). SharedPreferences 으로 이전 상태를 반영 ()

    : (2). 해당 User 의 정보를 가져오기 ()

    : (3). Home 화면으로 이동 ()

    : (4). Home 화면에 해당 User 의 이전 이전 상태를 반영 ()

*/
