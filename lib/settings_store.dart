import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/screen_theme_data.dart';

final settingsStoreProvider =
    ChangeNotifierProvider<SettingsStore>((ref) => SettingsStore());

class SettingsStore extends ChangeNotifier {
  ScreenThemedata? _themeData;
  ScreenThemedata? get themeData => _themeData;

  Future<void> screenTheme() async {
    // 세팅 스토어를 만들고 메타리얼앱이 참조해서 바꿈
    // (스테이트 메니지먼트)리버팟 + 체인지 노티파이어로 감싸서 쓰기 => 유저스토어 참고
  }
}
