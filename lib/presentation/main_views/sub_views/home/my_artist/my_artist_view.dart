import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/tab_screen/tab_screen_view.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/my_artist_view_image.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class MyArtistView extends StatefulWidget {
  const MyArtistView({super.key});

  @override
  State<MyArtistView> createState() => _MyArtistViewState();
}

class _MyArtistViewState extends State<MyArtistView> {
  String name = "ALICE";
  String selectedImageUrl = "";
  String selectedName = "";
  bool isSelected = false;

  void _selectArtist() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  void _saveSelectedArtist() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainTabScreenView(),
        settings: RouteSettings(arguments: {
          'imageId': isSelected ? ImageId.image_1.toString() : null,
          'name': isSelected ? ImageData.getImageUrl(ImageId.name_0) : null,
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: SizeConverter.getHeight(context, 10)),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Text(
                              '나의 아티스트',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 25)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 27.0),
                            child: SizedBox(
                              width: SizeConverter.getWidth(context, 125),
                              height: SizeConverter.getHeight(context, 150),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 40, 40, 40),
                                    width: 2,
                                  ),
                                ),
                                child: isSelected
                                    ? ClipOval(
                                        child: Image.network(
                                          ImageData.getImageUrl(
                                              ImageId.image_1),
                                          fit: BoxFit.cover,
                                          width: SizeConverter.getWidth(
                                              context, 85),
                                          height: SizeConverter.getHeight(
                                              context, 100),
                                        ),
                                      )
                                    : null,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 10)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 29.0),
                            child: SizedBox(
                              width: SizeConverter.getWidth(context, 122),
                              height: SizeConverter.getHeight(context, 50),
                              child: Container(
                                child: isSelected
                                    ? Center(
                                        child: Text(
                                          ImageData.getImageUrl(ImageId.name_0),
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
                SizedBox(height: SizeConverter.getHeight(context, 60)),
                SizedBox(
                  width: SizeConverter.getWidth(context, 105),
                  height: SizeConverter.getHeight(context, 40),
                  child: ElevatedButton(
                    onPressed: _saveSelectedArtist,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      disabledForegroundColor: Colors.white,
                      disabledBackgroundColor: Colors.transparent,
                      side: BorderSide(
                        color: ColorExtension.accentColor,
                        width: 2,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: Text(
                      '저장하기',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorExtension.accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConverter.getHeight(context, 80)),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Text(
                              '추천 아티스트',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 10)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 1,
                              color: Colors.white,
                              width: SizeConverter.getWidth(context, 338),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 25)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: SizeConverter.getWidth(context, 83),
                                  height: SizeConverter.getHeight(context, 100),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 40, 40, 40),
                                        width: 2,
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image.network(
                                        ImageData.getImageUrl(ImageId.image_0),
                                        fit: BoxFit.cover,
                                        width:
                                            SizeConverter.getWidth(context, 85),
                                        height: SizeConverter.getHeight(
                                            context, 100),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConverter.getWidth(context, 90),
                                  height: SizeConverter.getHeight(context, 50),
                                  child: Center(
                                    child: Text(
                                      name,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConverter.getWidth(context, 30),
                                ),
                                SizedBox(
                                  width: SizeConverter.getWidth(context, 105),
                                  height: SizeConverter.getHeight(context, 40),
                                  child: ElevatedButton(
                                    onPressed: _selectArtist,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      disabledForegroundColor: Colors.white,
                                      disabledBackgroundColor:
                                          Colors.transparent,
                                      side: BorderSide(
                                        color: ColorExtension.accentColor,
                                        width: 2,
                                      ),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),
                                    child: Text(
                                      '선택하기',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: ColorExtension.accentColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
