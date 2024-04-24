import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/pictorial_post_image.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class PictorialPostOne extends StatefulWidget {
  const PictorialPostOne({Key? key}) : super(key: key);

  @override
  State<PictorialPostOne> createState() => _PictorialPostOneState();
}

class _PictorialPostOneState extends State<PictorialPostOne> {
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    '화보',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: SizeConverter.getHeight(context, 30)),
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
                            height: SizeConverter.getHeight(context, 530),
                            child: Image.network(
                              ImageData.getImageUrl(ImageId.image_0),
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
                                  'My, La vie en rose _',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                '[ 나의 라비앙로즈 ]\n인생을 살면서 어려움 어떤 어려움 없이 모두 이루면서 사는\n나의 장밋빛 인생이라는 의미를 가진 작품.',
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
