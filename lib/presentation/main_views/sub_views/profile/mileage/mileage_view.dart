import 'package:flutter/material.dart';

class MileageView extends StatefulWidget {
  const MileageView({super.key});

  @override
  State<MileageView> createState() => _MileageViewState();
}

class _MileageViewState extends State<MileageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mileage 화면'),
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
