import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/advertisement/home_advertisement.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/home_artist_output_screen_image.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/pictorial_post/pictorial_post_one.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/pictorial_post/pictorial_post_three.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/pictorial_post/pictorial_post_two.dart';
import 'package:handy_ipduk/presentation/loading_bar/loading_bar_animation.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/artist_main/artist_main_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/my_artist/my_artist_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _isLoading = false;
  String selectedImage = "";
  String selectedName = "";

  void _navigateToArtistMain() {
    if (selectedImage.isNotEmpty && selectedName.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ArtistMainView()),
        ).then((_) {
          setState(() {
            _isLoading = false;
          });
        });
      });
    }
  }

  void _navigateToCalendar() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CalendarView()),
      ).then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (data != null) {
      selectedImage = data['imageId'] ?? '';
      selectedName = data['name'] ?? '';
    }

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('IPDUK'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      height:
                          SizeConverter.getHeightPercentage(context, 0.025)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeightPercentage(
                          context, 0.33), // 광고 사이즈
                    ),
                    child: const HomeAdvertisement(),
                  ),
                  SizedBox(
                      height: SizeConverter.getHeightPercentage(context, 0.06)),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      '나의 아티스트',
                                      style: TextStyle(
                                        fontSize: 25,
                                        // color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0.0),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const MyArtistView()),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        // color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height: SizeConverter.getHeightPercentage(
                                    context, 0.03)),
                            GestureDetector(
                              onTap: _navigateToArtistMain,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 27.0),
                                child: SizedBox(
                                  width: SizeConverter.getWidthPercentage(
                                      context, 0.3), // UI 0.35
                                  height: SizeConverter.getHeightPercentage(
                                      context, 0.18),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 40, 40, 40),
                                        width: 2,
                                      ),
                                    ),
                                    child: selectedImage.isNotEmpty
                                        ? ClipOval(
                                            child: Image.network(
                                              ImageData.getImageUrl(
                                                  ImageId.image_1),
                                              fit: BoxFit.cover,
                                              width: SizeConverter
                                                  .getWidthPercentage(
                                                      context, 0.29),
                                              height: SizeConverter
                                                  .getHeightPercentage(
                                                      context, 0.179),
                                            ),
                                          )
                                        : null,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                                height: SizeConverter.getHeightPercentage(
                                    context, 0.012)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28.0),
                              child: SizedBox(
                                width: SizeConverter.getWidthPercentage(
                                    context, 0.295),
                                height: SizeConverter.getHeightPercentage(
                                    context, 0.061),
                                child: Container(
                                  child: selectedName.isNotEmpty
                                      ? Center(
                                          child: Text(
                                            selectedName,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          SizeConverter.getHeightPercentage(context, 0.182)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Schedule',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                          height: SizeConverter.getHeightPercentage(
                              context, 0.023)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 7.0),
                                  child: Text(
                                    '내 일정 확인하기',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  '아티스트 Calendar는\n공연,미디어 Schedule입니다.\n나의 아티스트 일정을 관리해보세요.',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              width: SizeConverter.getWidthPercentage(
                                  context, 0.055)),
                          GestureDetector(
                            onTap: _navigateToCalendar,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: SizedBox(
                                width: SizeConverter.getWidthPercentage(
                                    context, 0.2),
                                height: SizeConverter.getHeightPercentage(
                                    context, 0.12),
                                child: Image.network(
                                  ImageData.getImageUrl(ImageId.image_2),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          SizeConverter.getHeightPercentage(context, 0.105)),
                  SizedBox(
                      height:
                          SizeConverter.getHeightPercentage(context, 0.102)),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight:
                            SizeConverter.getHeightPercentage(context, 0.99)),
                    child: const PictorialPostOne(),
                  ),
                  SizedBox(
                      height:
                          SizeConverter.getHeightPercentage(context, 0.207)),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight:
                            SizeConverter.getHeightPercentage(context, 0.99)),
                    child: const PictorialPostTwo(),
                  ),
                  SizedBox(
                      height:
                          SizeConverter.getHeightPercentage(context, 0.207)),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight:
                            SizeConverter.getHeightPercentage(context, 0.99)),
                    child: const PictorialPostThree(),
                  ),
                  SizedBox(
                      height: SizeConverter.getHeightPercentage(context, 0.01)),
                ],
              ),
            ),
            if (_isLoading)
              const Center(
                child: LoadingAnimation(),
              ),
          ],
        ),
      ),
    );
  }
}
