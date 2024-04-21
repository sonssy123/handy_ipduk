import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/calendar/apply_history/apply_history_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/calendar/event_information/event_information_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/calendar/like_list/like_list_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/home_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/profile_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({super.key});

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calendar 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const LikeListButton(),
                  const ApplyHistoryButton(),
                  const EventInformationButton(),
                  const HomeButton(),
                  const ShopButton(),
                  const ProfileButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LikeListButton extends StatelessWidget {
  const LikeListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LikeListView()),
        );
      },
      child: const Text('Like List 화면으로 이동'),
    );
  }
}

class ApplyHistoryButton extends StatelessWidget {
  const ApplyHistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ApplyHistoryView()),
        );
      },
      child: const Text('Apply History 화면으로 이동'),
    );
  }
}

class EventInformationButton extends StatelessWidget {
  const EventInformationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EventInformationView()),
        );
      },
      child: const Text('Event Information 화면으로 이동'),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
      },
      child: const Text('Home 화면으로 이동'),
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

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileView()),
        );
      },
      child: const Text('Profile 화면으로 이동'),
    );
  }
}
