import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/calendar/event_apply/event_apply_view.dart';

class EventInformationView extends StatefulWidget {
  const EventInformationView({super.key});

  @override
  State<EventInformationView> createState() => _EventInformationViewState();
}

class _EventInformationViewState extends State<EventInformationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Event Information 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const EventApplyButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventApplyButton extends StatelessWidget {
  const EventApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EventApplyViwe()),
        );
      },
      child: const Text('Event Apply 화면으로 이동'),
    );
  }
}
