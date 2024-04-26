import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/advertisement/home_advertisement.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/artist_output_screen/artist_output_screen.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/calendar_connect/calendar_connect.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/pictorial_post/pictorial_post_one.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/pictorial_post/pictorial_post_three.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/pictorial_post/pictorial_post_two.dart';
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  SizedBox(height: SizeConverter.getHeight(context, 20)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeight(context, 271),
                    ),
                    child: const HomeAdvertisement(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 35)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeight(context, 311),
                    ),
                    child: const ArtistOutputScreen(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 100)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeight(context, 201),
                    ),
                    child: const CalendarConnect(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 100)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeight(context, 800),
                    ),
                    child: const PictorialPostOne(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 150)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeight(context, 800),
                    ),
                    child: const PictorialPostTwo(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 150)),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: SizeConverter.getHeight(context, 800),
                    ),
                    child: const PictorialPostThree(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyArtistButton extends StatelessWidget {
  const MyArtistButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyArtistView()),
        );
      },
      child: const Text('My Artist 화면으로 이동'),
    );
  }
}

class ArtistMainButton extends StatelessWidget {
  const ArtistMainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ArtistMainView()),
        );
      },
      child: const Text('Artist Main 화면으로 이동'),
    );
  }
}

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CalendarView()),
        );
      },
      child: const Text('Calendar 화면으로 이동'),
    );
  }
}
