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
          title: const Text('Artist Profile'),
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
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
