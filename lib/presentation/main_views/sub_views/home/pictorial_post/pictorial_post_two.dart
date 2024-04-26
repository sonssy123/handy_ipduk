import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/pictorial_post_image.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class PictorialPostTwo extends StatefulWidget {
  const PictorialPostTwo({super.key});

  @override
  State<PictorialPostTwo> createState() => _PictorialPostTwoState();
}

class _PictorialPostTwoState extends State<PictorialPostTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21.0),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'EZ_ALICE',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: SizeConverter.getHeight(context, 13)),
                        GestureDetector(
                          child: SizedBox(
                            width: SizeConverter.getWidth(context, 400),
                            height: SizeConverter.getHeight(context, 630),
                            child: Image.network(
                              ImageData.getImageUrl(ImageId.image_2),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: SizeConverter.getHeight(context, 20)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 7.0),
                                child: Text(
                                  'Happy ending is mine _',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "[ 어차피 결말은, 'Happy ending' 이야 ]\n내 스토리의 끝은 '해피 앤딩'이라는 의미를 가진 작품.",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
