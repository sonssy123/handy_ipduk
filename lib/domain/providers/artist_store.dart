import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

        print('아티스트 데이터 : $artistData');

        return Artist.fromJson(artistData);
      }).toList();

      print('전체 아티스트 데이터 : ${_artist.length}');

      notifyListeners();
    } catch (e) {
      print('에러 : $e');
    }
  }
}
