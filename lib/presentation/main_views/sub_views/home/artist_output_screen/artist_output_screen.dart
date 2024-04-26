import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/artist_output_screen_image.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/my_artist/my_artist_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class ArtistOutputScreen extends StatefulWidget {
  const ArtistOutputScreen({Key? key}) : super(key: key);

  @override
  State<ArtistOutputScreen> createState() => _ArtistOutputScreenState();
}

class _ArtistOutputScreenState extends State<ArtistOutputScreen> {
  String selectedImage = "";
  String selectedName = "";

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
        backgroundColor: Colors.amber,
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                '나의 아티스트',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
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
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConverter.getHeight(context, 25)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 27.0),
                        child: SizedBox(
                          width: SizeConverter.getWidth(context, 125),
                          height: SizeConverter.getHeight(context, 150),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 40, 40, 40),
                                width: 2,
                              ),
                            ),
                            child: selectedImage.isNotEmpty
                                ? ClipOval(
                                    child: Image.network(
                                      ImageData.getImageUrl(ImageId.image_1),
                                      fit: BoxFit.cover,
                                      width:
                                          SizeConverter.getWidth(context, 85),
                                      height:
                                          SizeConverter.getHeight(context, 100),
                                    ),
                                  )
                                : null,
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConverter.getHeight(context, 10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29.0),
                        child: SizedBox(
                          width: SizeConverter.getWidth(context, 122),
                          height: SizeConverter.getHeight(context, 50),
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
          ],
        ),
      ),
    );
  }
}
