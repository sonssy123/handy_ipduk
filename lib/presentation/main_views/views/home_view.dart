import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/artist_main/artist_main_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/my_artist/my_artist_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const MyArtistButton(),
                  const ArtistMainButton(),
                  const CalendarButton(),
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
