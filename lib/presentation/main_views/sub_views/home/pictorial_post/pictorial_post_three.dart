import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/pictorial_post_image.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class PictorialPostThree extends StatefulWidget {
  const PictorialPostThree({super.key});

  @override
  State<PictorialPostThree> createState() => _PictorialPostThreeState();
}

class _PictorialPostThreeState extends State<PictorialPostThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        SizedBox(
                            height: SizeConverter.getHeightPercentage(
                                context, 0.037)),
                        GestureDetector(
                          child: SizedBox(
                            width:
                                SizeConverter.getWidthPercentage(context, 0.9),
                            height: SizeConverter.getHeightPercentage(
                                context, 0.71),
                            child: Image.network(
                              ImageData.getImageUrl(ImageId.image_1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: SizeConverter.getHeightPercentage(
                                context, 0.025)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 7.0),
                                child: Text(
                                  'Fearless _',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                '[ 아무도 날 막지 못해 ]\n아무리 어두운 현실 속에서라도 두려울게 없으며\n굳세게 앞으로 걸어 나아간다는 의미를 가진 작품.',
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
