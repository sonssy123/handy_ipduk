import 'package:flutter/material.dart';

class ArtistProfileView extends StatefulWidget {
  const ArtistProfileView({super.key});

  @override
  State<ArtistProfileView> createState() => _ArtistProfileViewState();
}

class _ArtistProfileViewState extends State<ArtistProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Artist Profile 화면'),
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
