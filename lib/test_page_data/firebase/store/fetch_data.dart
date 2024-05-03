import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handy_ipduk/test_page_data/firebase/store/firebase_artist_profile.dart';

class FetchData {
  Future<Artist?> fetchData() async {
    try {
      final collection = FirebaseFirestore.instance.collection('tb_artist');
      final snapshot = await collection.doc('profile').get();
      if (snapshot.exists) {
        final artist = Artist.fromFirestore(snapshot);
        return artist;
      } else {
        throw Exception('사용 가능한 데이터가 없습니다');
      }
    } catch (e) {
      throw Exception('데이터를 불러오는 중 이슈가 발생했습니다: $e');
    }
  }
}

/*

import 'package:firebase_database/firebase_database.dart';

class DataTest {
  late final String dataId;

  Future<Object?> fetchData() async {
    try {
      final ref = FirebaseDatabase.instance.ref();
      final snapshot = await ref.child('tb_artist/$dataId').get();
      if (snapshot.exists) {
        return snapshot.value;
      } else {
        throw Exception('사용 가능한 데이터가 없습니다');
      }
    } catch (e) {
      throw Exception('데이터를 전송 중 이슈가 있습니다: $e');
    }
  }
}

*/