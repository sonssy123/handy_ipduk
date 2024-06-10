import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_ipduk/data/models/artist/artist.dart';

final artistStoreProvider =
    ChangeNotifierProvider<ArtistStore>((ref) => ArtistStore());

class ArtistStore extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Artist> _artist = [];
  List<Artist> get artist => _artist;

  Future<void> fetchArtistInfo() async {
    try {
      final artistDoc = await _firestore.collection('tb_artist').get();

      _artist = artistDoc.docs.map((doc) {
        final artistData = doc.data();

        return Artist.fromJson(artistData);
      }).toList();

      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}

class TestSelect extends ConsumerStatefulWidget {
  const TestSelect({Key? key}) : super(key: key);

  @override
  ConsumerState<TestSelect> createState() => _TestSelectState();
}

class _TestSelectState extends ConsumerState<TestSelect> {
  static final storageRef = FirebaseStorage.instance.ref();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String _logoImageUrl = '';

  static Future<String?> getImageData(String imagePath) async {
    try {
      final imageRef = storageRef.child(imagePath);
      final String imageDownloadURL = await imageRef.getDownloadURL();
      return imageDownloadURL;
    } catch (e) {
      return null;
    }
  }

  Future<void> getUserInfo() async {
    try {
      final artistSnapshot = await _firestore.collection('tb_artist').get();

      final artistData = artistSnapshot.docs.first.data();
      final artist = Artist.fromJson(artistData);

      final String logoImageUrl = artist.logoImageUrl;

      if (logoImageUrl.isNotEmpty) {
        final String? imageData = await getImageData(logoImageUrl);
        setState(() {
          _logoImageUrl = imageData ?? '';
        });
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getUserInfo();
      ref.read(artistStoreProvider).fetchArtistInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final artistStore = ref.watch(artistStoreProvider);

    ref.watch(artistStoreProvider);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 200.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                ),
                if (_logoImageUrl.isNotEmpty)
                  Image.network(
                    _logoImageUrl,
                    width: 100.w,
                    height: 100.h,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


















/*

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_ipduk/domain/providers/artist_store.dart';
import 'package:handy_ipduk/presentation/common/profile_image.dart';

class TestSelect extends ConsumerStatefulWidget {
  const TestSelect({Key? key}) : super(key: key);

  @override
  ConsumerState<TestSelect> createState() => _TestSelectState();
}

class _TestSelectState extends ConsumerState<TestSelect> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(artistStoreProvider).fetchArtistInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    final artistStore = ref.watch(artistStoreProvider);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 200.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Column(
                    children: artistStore.artist.map((artist) {
                      return artistStore.artist.indexOf(artist) == 0
                          ? ProfileImage(
                              imageUrl: artist.artistImageUrl,
                              width: 80,
                              borderWidth: 2,
                              borderColor: Colors.blue,
                            )
                          : const SizedBox.shrink();
                    }).toList(),
                  ),
                ),
                Container(
                  width: 200.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Row(
                    children: [
                      // Column(
                      //   children: artistStore.artist.map((artist) {
                      //     return artistStore.artist.indexOf(artist) == 0
                      //         ? ProfileImage(
                      //             imageUrl: artist.artistImageUrl,
                      //             width: 80,
                      //             borderWidth: 2,
                      //             borderColor: Colors.blue,
                      //           )
                      //         : const SizedBox.shrink();
                      //   }).toList(),
                      // ),
                      Column(
                        children: artistStore.artist.map((artist) {
                          return artistStore.artist.indexOf(artist) == 0
                              ? Text(
                                  artist.koreanName,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const SizedBox.shrink();
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

*/