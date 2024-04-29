import 'package:firebase_storage/firebase_storage.dart';

class ImageConverter {
  static final storageRef = FirebaseStorage.instance.ref();

  static Future<String?> getImageData() async {
    try {
      // 파일 경로 및 이름을 사용하여 참조 생성
      final imageRef = storageRef.child("");
      // 이미지 다운로드 URL 받기
      final String imageDownloadURL = await imageRef.getDownloadURL();
      return imageDownloadURL;
    } catch (e) {
      return null;
    }
  }
}
