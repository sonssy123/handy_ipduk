import 'package:flutter/material.dart';

class ThemeColor extends InheritedWidget {
  const ThemeColor({
    super.key,
    required this.color,
    required super.child,
  });

  final Color color;

  // context를 통해 ThemeColor 위젯을 검색하는 또 다른 정적 메서드
  // 위젯을 찾을 수 없으면 assert문을 통해 에러를 발생 시킨다
  static ThemeColor? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeColor>();
  }

  // InheritedWidget의 필수 오버라이드 메서드
  // 이 위젯이 새로 업데이트될 때 하위 위젯들에게 알릴지 여부를 결정
  static ThemeColor of(BuildContext context) {
    final ThemeColor? result = maybeOf(context);
    assert(result != null, 'No ThemeColor found in dontext');
    return result!;
  }

  // InheritedWidget의 필수 오버라이드 메서드
  // 이 위젯이 새로 업데이트될 때 하위 위젯들에게 알릴지 여부를 결정 한다
  @override
  bool updateShouldNotify(ThemeColor oldWidget) => color != oldWidget.color;
}
