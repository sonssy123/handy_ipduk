import 'package:firebase_storage/firebase_storage.dart';

class ImageConverter {
  static final storageRef = FirebaseStorage.instance.ref();

  static Future<String?> getImageData(String imagePath) async {
    try {
      final imageRef = storageRef.child(imagePath);
      final String imageDownloadURL = await imageRef.getDownloadURL();
      return imageDownloadURL;
    } catch (e) {
      return null;
    }
  }
}
