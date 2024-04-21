import 'package:flutter/material.dart';

class MyArtistView extends StatefulWidget {
  const MyArtistView({super.key});

  @override
  State<MyArtistView> createState() => _MyArtistViewState();
}

class _MyArtistViewState extends State<MyArtistView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Artist 화면'),
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
