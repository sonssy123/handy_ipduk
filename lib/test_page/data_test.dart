import 'package:firebase_database/firebase_database.dart';

class DataTest {
  late final String dataId;

  Future<dynamic> fetchData() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('tb_test/$dataId').get();

    if (snapshot.exists) {
      return snapshot.value;
    } else {
      throw Exception('사용 가능한 데이터가 없습니다');
    }
  }
}

// import 'package:flutter/material.dart';

// class ArtistTest extends StatefulWidget {
//   const ArtistTest({super.key});

//   @override
//   State<ArtistTest> createState() => _ArtistTestState();
// }

// class _ArtistTestState extends State<ArtistTest> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [],
//       ),
//     );
//   }
// }

/*

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class DataTest {
  FirebaseApp? _firebaseApp;
  FirebaseDatabase? _rtdb;

  // Firebase를 초기화하는 비동기 함수
  DataTest() {
    _initializeFirebase();
  }

  // Firebase 초기화 메서드
  Future<void> _initializeFirebase() async {
    _firebaseApp = await Firebase.initializeApp();
    _rtdb = FirebaseDatabase.instanceFor(
      app: _firebaseApp!,
      databaseURL: 'https://your-realtime-database-url.firebaseio.com/',
    );
  }

  // 데이터 작성
  Future<void> writeToDatabase() async {
    if (_rtdb != null) {
      DatabaseReference ref = _rtdb!.ref("tb_test/1");
      await ref.set({
        "name": "John",
        "age": 18,
        "address": {"line1": "100 Mountain View"}
      });
    }
  }

  // 데이터 업데이트
  Future<void> updateInDatabase() async {
    if (_rtdb != null) {
      DatabaseReference ref = _rtdb!.ref("users");
      await ref.update({
        "123/age": 19,
        "123/address/line1": "1 Mountain View",
      });
    }
  }

  // 데이터의 값이 변경될 때마다 이벤트를 수신하며 지정된 콜백 함수를 호출하는 메서드
  void listenToChanges(String postId, Function(dynamic) updateStarCount) {
    if (_rtdb != null) {
      DatabaseReference starCountRef = _rtdb!.ref('posts/$postId/starCount');
      starCountRef.onValue.listen((DatabaseEvent event) {
        final data = event.snapshot.value;
        updateStarCount(data);
      });
    }
  }
}

*/
