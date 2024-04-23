import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/my_artist/my_artist_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class ArtistOutputScreen extends StatefulWidget {
  const ArtistOutputScreen({Key? key}) : super(key: key);

  @override
  State<ArtistOutputScreen> createState() => _ArtistOutputScreenState();
}

class _ArtistOutputScreenState extends State<ArtistOutputScreen> {
  @override
  Widget build(BuildContext context) {
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
                                  color: Colors.black,
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
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConverter.getHeight(context, 30)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: SizedBox(
                          width: SizeConverter.getWidth(context, 150),
                          height: SizeConverter.getHeight(context, 150),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConverter.getHeight(context, 10)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0),
                        child: SizedBox(
                          width: SizeConverter.getWidth(context, 122),
                          height: SizeConverter.getHeight(context, 50),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
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
