import 'dart:async';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/home_advertisement_image.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class HomeAdvertisement extends StatefulWidget {
  const HomeAdvertisement({Key? key}) : super(key: key);

  @override
  State<HomeAdvertisement> createState() => _HomeAdvertisementState();
}

class _HomeAdvertisementState extends State<HomeAdvertisement>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
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
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeConverter.getHeightPercentage(context, 0.300), // 전체 사이즈
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
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                      image: DecorationImage(
                        image: NetworkImage(
                          ImageData.getImageUrl(ImageId.values[pageIndex]),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 166.0, // 수직 위치
                    left: 20.0, // 수평 위치
                    child: Text(
                      "${pageIndex + 1}/${ImageId.values.length}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
