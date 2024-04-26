import 'dart:async';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/image/shop_advertisement_image.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class ShopAdvertisementView extends StatefulWidget {
  const ShopAdvertisementView({super.key});

  @override
  State<ShopAdvertisementView> createState() => _ShopAdvertisementViewState();
}

class _ShopAdvertisementViewState extends State<ShopAdvertisementView>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startTimer();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  void _restartTimer() {
    _timer?.cancel();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    // 언더바가 이동하는 칸 수의 범위
    double imageWidth = MediaQuery.of(context).size.width / 25;
    // 페이지 너비의 절반을 계산하여 중앙에 맞춤: / 2
    double halfPageWidth = imageWidth / 2;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: SizedBox(
          height: SizeConverter.getHeight(context, 370),
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index % ImageId.values.length;
                _restartTimer();
              });
            },
            itemBuilder: (BuildContext context, int index) {
              final int pageIndex = index % ImageId.values.length;
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          ImageData.getImageUrl(ImageId.values[pageIndex]),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  AnimatedBuilder(
                    animation: _animation,
                    builder: (BuildContext context, Widget? child) {
                      // halfPageWidth -/+ 중앙으로 부터 좌/우로 언더바 위치와 범위 조정
                      // 예시: halfPageWidth - 60
                      double distanceFromCenter =
                          (_currentPage * imageWidth) - halfPageWidth - 60;
                      return Stack(
                        children: [
                          Positioned(
                            // 페이지 중앙에서 시작하도록 left 위치 설정
                            left: MediaQuery.of(context).size.width / 2 -
                                72, // 페이지 중앙에서 +왼쪽/-오른쪽 이동하여 고정된 언더바를 중앙에 위치
                            bottom: 20, // 언더바 수직 위치: 아래로 20
                            child: Container(
                              width: SizeConverter.getWidth(
                                  context, 143), // 고정된 언더바 높이
                              height: SizeConverter.getHeight(
                                  context, 4), // 고정된 언더바 너비
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ),
                          Positioned(
                            // 페이지 중앙에서 시작하도록 left 위치 설정
                            left: MediaQuery.of(context).size.width / 2 +
                                distanceFromCenter -
                                (_animation.value + halfPageWidth),
                            bottom: 20, // 언더바 수직 위치: 아래로 20
                            child: Container(
                              width: SizeConverter.getWidth(
                                  context, 5), // 움직이는 언더바 너비
                              height: SizeConverter.getHeight(
                                  context, 4), // 움직이는 언더바 높이
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
