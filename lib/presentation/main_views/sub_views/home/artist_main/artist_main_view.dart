import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/home/artist_profile/artist_profile_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';

class ArtistMainView extends StatefulWidget {
  const ArtistMainView({super.key});

  @override
  State<ArtistMainView> createState() => _ArtistMainViewState();
}

class _ArtistMainViewState extends State<ArtistMainView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Artist Main 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const ArtistProfileButton(),
                  const ShopButton(),
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

class ArtistProfileButton extends StatelessWidget {
  const ArtistProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ArtistProfileView()),
        );
      },
      child: const Text('Artist Profile 화면으로 이동'),
    );
  }
}

class ShopButton extends StatelessWidget {
  const ShopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShopView()),
        );
      },
      child: const Text('Shop 화면으로 이동'),
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
