import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/image/calendar_connect_image.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class CalendarConnect extends StatefulWidget {
  const CalendarConnect({Key? key}) : super(key: key);

  @override
  State<CalendarConnect> createState() => _CalendarConnectState();
}

class _CalendarConnectState extends State<CalendarConnect> {
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
                    'Schedule',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: SizeConverter.getHeight(context, 20)),
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
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '아티스트 Calendar는\n공연,미디어 Schedule입니다.\n나의 아티스트 일정을 관리해보세요.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: SizeConverter.getWidth(context, 10)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 24.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CalendarView()),
                          );
                        },
                        child: SizedBox(
                          width: SizeConverter.getWidth(context, 82),
                          height: SizeConverter.getHeight(context, 98),
                          child: Image.network(
                            ImageData.getImageUrl(ImageId.image_0),
                            fit: BoxFit.cover,
                          ),
                        ),
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
