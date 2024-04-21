import 'package:flutter/material.dart';

class EventApplyViwe extends StatefulWidget {
  const EventApplyViwe({super.key});

  @override
  State<EventApplyViwe> createState() => _EventApplyViweState();
}

class _EventApplyViweState extends State<EventApplyViwe> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Event Apply 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
