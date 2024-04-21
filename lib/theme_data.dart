import 'package:flutter/material.dart';

// light 테마
final themeData = ThemeData(
    colorScheme: const ColorScheme.light(
        background: Colors.white, // 화면 배경
        primary: Color.fromARGB(255, 7, 7, 7), // 버튼 배경
        onPrimary: Colors.white), // 버튼 텍스트
    fontFamily: 'PRETENDARD', // 텍스트 폰트
    textTheme:
        const TextTheme(bodyMedium: TextStyle(color: Colors.black))); // 테마 배경
// useMaterial3: true,

// dark 테마
final darkThemeData = ThemeData(
    colorScheme: const ColorScheme.dark(
        background: Colors.black, // 화면 배경
        primary: Color.fromARGB(255, 0, 255, 170), // 버튼 배경
        onPrimary: Colors.black), // 버튼 텍스트
    fontFamily: 'PRETENDARD',
    textTheme:
        const TextTheme(bodyMedium: TextStyle(color: Colors.white))); // 테마 배경
// useMaterial3: true,

/*

// on ~ 반대되는 색상
Color: theme.colorScheme.onPrimary,
Color: theme.colorScheme.primary,

*/
