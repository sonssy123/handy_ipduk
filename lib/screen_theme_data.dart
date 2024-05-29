import 'package:flutter/material.dart';

class ScreenThemedata {
  // light 테마
  final themeData = ThemeData(
    colorScheme: const ColorScheme.light(
      // 화면 배경
      background: Colors.white,

      primary: Colors.black,

      onPrimary: Colors.white,
    ),

    // 텍스트 폰트
    fontFamily: 'PRETENDARD',

    // 글자 색상
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),

    // appBar 색상
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 63, 255, 255), // 배경색
      iconTheme: IconThemeData(color: Colors.black), // 아이콘 색상
    ),
  );

// dark 테마
  final darkThemeData = ThemeData(
    colorScheme: const ColorScheme.dark(
      // 화면 배경
      background: Color.fromARGB(255, 66, 66, 66),

      primary: Colors.white,

      onPrimary: Colors.black,
    ),

    // 텍스트 폰트
    fontFamily: 'PRETENDARD',

    // 글자 색상
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),

    // appBar 색상
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, // 배경색
      iconTheme: IconThemeData(color: Colors.white), // 아이콘 색상
    ),
  );
}















































/*

import 'package:flutter/material.dart';

// light 테마
final themeData = ThemeData(
  colorScheme: const ColorScheme.light(
    // 화면 배경
    background: Colors.white,

    primary: Colors.black,

    onPrimary: Colors.white,
  ),

  // 텍스트 폰트
  fontFamily: 'PRETENDARD',

  // 글자 색상
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),

  // appBar 색상
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 63, 255, 255), // 배경색
    iconTheme: IconThemeData(color: Colors.black), // 아이콘 색상
  ),
);

// dark 테마
final darkThemeData = ThemeData(
  colorScheme: const ColorScheme.dark(
    // 화면 배경
    background: Color.fromARGB(255, 66, 66, 66),

    primary: Colors.white,

    onPrimary: Colors.black,
  ),

  // 텍스트 폰트
  fontFamily: 'PRETENDARD',

  // 글자 색상
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),

  // appBar 색상
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black, // 배경색
    iconTheme: IconThemeData(color: Colors.white), // 아이콘 색상
  ),
);

*/



/*

import 'package:flutter/material.dart';

class ScreenThemeData {
// light 테마
  final themeData = ThemeData(
    colorScheme: const ColorScheme.light(
      // 화면 배경
      background: Colors.white,

      primary: Colors.black,

      onPrimary: Colors.white,
    ),

    // 텍스트 폰트
    fontFamily: 'PRETENDARD',

    // 글자 색상
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),

    // appBar 색상
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 63, 255, 255), // 배경색
      iconTheme: IconThemeData(color: Colors.black), // 아이콘 색상
    ),
  );

// dark 테마
  final darkThemeData = ThemeData(
    colorScheme: const ColorScheme.dark(
      // 화면 배경
      background: Color.fromARGB(255, 66, 66, 66),

      primary: Colors.white,

      onPrimary: Colors.black,
    ),

    // 텍스트 폰트
    fontFamily: 'PRETENDARD',

    // 글자 색상
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),

    // appBar 색상
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black, // 배경색
      iconTheme: IconThemeData(color: Colors.white), // 아이콘 색상
    ),
  );
}

*/