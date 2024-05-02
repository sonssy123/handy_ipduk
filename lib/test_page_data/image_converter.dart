import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:handy_ipduk/test_page_data/image_test.dart';

class ImageConverter {
  static final storageRef = FirebaseStorage.instance.ref();

  // 이미지 데이터를 Uint8List로 변환하고 이를 처리해서 ui.Image로 반환
  static Future<ui.Image> bytesToImage(Uint8List imgBytes) async {
    ui.Codec codec = await ui.instantiateImageCodec(imgBytes);
    ui.FrameInfo frame = await codec.getNextFrame();
    return frame.image;
  }

  // 이미지 ID를 받아 해당 이미지의 다운로드 URL을 가져오기
  static Future<String?> getImageData(ImageId id) async {
    try {
      final imageUrl = ImageData.getImageUrl(id);
      if (imageUrl.isNotEmpty) {
        final imageRef = storageRef.child(imageUrl);
        final String imageDownloadURL = await imageRef.getDownloadURL();
        return imageDownloadURL;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}

/*

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:firebase_storage/firebase_storage.dart';

class ImageConverter {
  static final storageRef = FirebaseStorage.instance.ref();

  // Uint8List
  static Future<ui.Image> bytesToImage(Uint8List imgBytes) async {
    ui.Codec codec = await ui.instantiateImageCodec(imgBytes);
    ui.FrameInfo frame = await codec.getNextFrame();
    return frame.image;
  }

  static Future<String?> getImageData() async {
    try {
      final imageRef = storageRef.child("");
      final String imageDownloadURL = await imageRef.getDownloadURL();
      return imageDownloadURL;
    } catch (e) {
      return null;
    }
  }
}

*/