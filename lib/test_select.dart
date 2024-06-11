import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_ipduk/domain/providers/artist_store.dart';
import 'package:handy_ipduk/presentation/common/profile_image.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestSelect extends ConsumerStatefulWidget {
  const TestSelect({Key? key}) : super(key: key);

  @override
  ConsumerState<TestSelect> createState() => _TestSelectState();
}

class _TestSelectState extends ConsumerState<TestSelect> {
  final storageRef = FirebaseStorage.instance.ref();

  String? _imageUrl;
  final String _image = '';

  Future<void> _updateImage() async {
    final prefs = await SharedPreferences.getInstance();
    final updateImageUrl = prefs.getString(_image);

    if (updateImageUrl != null) {
      setState(() {
        _imageUrl = updateImageUrl;
      });
    } else {
      final artistStore = ref.read(artistStoreProvider);
      final imageUrl = artistStore.artist.isNotEmpty
          ? artistStore.artist[0].logoImageUrl
          : null;
      // final imageUrl = userStore.user?.imageUrl;

      if (imageUrl != null) {
        final downloadUrl = await getImageData(imageUrl);
        if (downloadUrl != null) {
          setState(() {
            _imageUrl = downloadUrl;
          });
          await prefs.setString(_image, downloadUrl);
        }
      }
    }
  }

  Future<String?> getImageData(String? imageUrl) async {
    if (imageUrl == null) {
      return null;
    }

    try {
      final imageRef = storageRef.child("artist/$imageUrl");
      final String imgeDownloadURL = await imageRef.getDownloadURL();
      return imgeDownloadURL;
    } catch (e) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(artistStoreProvider).fetchArtistInfo();
      _updateImage();
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: _imageUrl != null
                      ? ProfileImage(
                          imageUrl: _imageUrl!,
                          width: 200.w,
                          borderWidth: 2.w,
                          borderColor: const Color.fromARGB(255, 40, 40, 40),
                        )
                      : const SizedBox.shrink(),
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
                      //             imageUrl: artist.logoImageUrl,
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





















































// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:handy_ipduk/data/models/artist/artist.dart';

// final artistStoreProvider =
//     ChangeNotifierProvider<ArtistStore>((ref) => ArtistStore());

// class ArtistStore extends ChangeNotifier {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   List<Artist> _artist = [];
//   List<Artist> get artist => _artist;

//   Future<void> fetchArtistInfo() async {
//     try {
//       final artistDoc = await _firestore.collection('tb_artist').get();

//       _artist = artistDoc.docs.map((doc) {
//         final artistData = doc.data();

//         return Artist.fromJson(artistData);
//       }).toList();

//       notifyListeners();
//     } catch (e) {
//       rethrow;
//     }
//   }
// }

// class TestSelect extends ConsumerStatefulWidget {
//   const TestSelect({Key? key}) : super(key: key);

//   @override
//   ConsumerState<TestSelect> createState() => _TestSelectState();
// }

// class _TestSelectState extends ConsumerState<TestSelect> {
//   static final storageRef = FirebaseStorage.instance.ref();
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   String _logoImageUrl = '';

//   static Future<String?> getImageData(String imagePath) async {
//     try {
//       final imageRef = storageRef.child(imagePath);
//       final String imageDownloadURL = await imageRef.getDownloadURL();
//       return imageDownloadURL;
//     } catch (e) {
//       return null;
//     }
//   }

//   Future<void> getUserInfo() async {
//     try {
//       final artistSnapshot = await _firestore.collection('tb_artist').get();

//       final artistData = artistSnapshot.docs.first.data();
//       final artist = Artist.fromJson(artistData);

//       final String logoImageUrl = artist.logoImageUrl;

//       if (logoImageUrl.isNotEmpty) {
//         final String? imageData = await getImageData(logoImageUrl);
//         setState(() {
//           _logoImageUrl = imageData ?? '';
//         });
//       }
//     } catch (e) {
//       rethrow;
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       getUserInfo();
//       ref.read(artistStoreProvider).fetchArtistInfo();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final artistStore = ref.watch(artistStoreProvider);

//     ref.watch(artistStoreProvider);

//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   width: 200.w,
//                   height: 100.h,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.red),
//                   ),
//                 ),
//                 if (_logoImageUrl.isNotEmpty)
//                   Image.network(
//                     _logoImageUrl,
//                     width: 100.w,
//                     height: 100.h,
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


















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