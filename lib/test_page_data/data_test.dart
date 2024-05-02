import 'package:firebase_database/firebase_database.dart';

class DataTest {
  late final String dataId;

  Future<Object?> fetchData() async {
    try {
      final ref = FirebaseDatabase.instance.ref('tb_test/$dataId');
      final snapshot = await ref.get();

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
