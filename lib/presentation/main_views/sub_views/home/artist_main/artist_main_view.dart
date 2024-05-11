import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/loading_bar/loading_bar_animation.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/artist_main_view_image.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/artist_profile/artist_profile_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class ArtistMainView extends StatefulWidget {
  const ArtistMainView({Key? key}) : super(key: key);

  @override
  State<ArtistMainView> createState() => _ArtistMainViewState();
}

class _ArtistMainViewState extends State<ArtistMainView> {
  bool _isLoading = false;
  String _selectedTab = '';

  @override
  void initState() {
    super.initState();
    _selectedTab = 'Feed';
  }

  void _selectTab(String tabName) {
    setState(() {
      _selectedTab = tabName;
    });
  }

  void _navigateToArtistProfile() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ArtistProfileView()),
      ).then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    });
  }

  Widget _buildTab(String tabName, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: _selectedTab == tabName
                  ? ColorExtension.accentColor
                  : Colors.black,
            ),
          ),
          if (_selectedTab == tabName)
            Container(width: 30, height: 3, color: ColorExtension.accentColor),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber, // 배경
        appBar: AppBar(
          title: const Text('Artist Main'),
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 550, // 사이즈
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          ImageData.getImageUrl(ImageId.image_0),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: _navigateToArtistProfile,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0), // 가수
                            child: GestureDetector(
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'ALICE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 10.0), // 탭
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildTab('Feed', 'Feed', () {
                                _selectTab('Feed');
                              }),
                              _buildTab('Artist', 'Artist', () {
                                _selectTab('Artist');
                              }),
                              _buildTab('Schedule', 'Schedule', () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CalendarView(),
                                  ),
                                );
                              }),
                              _buildTab('Shop', 'Shop', () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MainTabScreenView(),
                                  ),
                                );
                              }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 8)), // 제목
                  if (_selectedTab == 'Feed')
                    const Padding(
                      padding: EdgeInsets.only(left: 0.0),
                      child: Column(
                        children: [
                          SizedBox(
                            child: Text(
                              'Post',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              '팬 게시판',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (_selectedTab == 'Artist')
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            child: Text(
                              '아티스트 게시판',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
