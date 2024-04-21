import 'package:flutter/material.dart';

class LikeListView extends StatefulWidget {
  const LikeListView({super.key});

  @override
  State<LikeListView> createState() => _LikeListViewState();
}

class _LikeListViewState extends State<LikeListView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Like List 화면'),
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
