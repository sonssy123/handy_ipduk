import 'package:flutter/material.dart';

class ApplyHistoryView extends StatefulWidget {
  const ApplyHistoryView({super.key});

  @override
  State<ApplyHistoryView> createState() => _ApplyHistoryViewState();
}

class _ApplyHistoryViewState extends State<ApplyHistoryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Apply History 화면'),
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
