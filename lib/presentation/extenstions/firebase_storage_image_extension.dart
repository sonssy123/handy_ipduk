import 'package:handy_ipduk/presentation/utils/firebase_image_data_converter.dart';
import 'package:handy_ipduk/presentation/utils/image_converter.dart';

extension FirebaseStorageImageDataTransmissionStatic
    on FirebaseStorageImgaeData {
  static Future<String?> transmitImageDataStatic() async {
    try {
      final String? imageData = await ImageConverter.getImageData();
      // 이미지 데이터를 전송, 반환
      return imageData;
    } catch (e) {
      return null;
    }
  }
}

/*

extension MediaQueryExtension on MediaQuery {
  static Size screenSize(BuildContext context) => MediaQuery.of(context).size;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

// print('sizer > ${MediaQueryExtension.screenSize(context)}');
// print('width > ${MediaQueryExtension.screenWidth(context)}');
// print('height > ${MediaQueryExtension.screenHeight(context)}');

*/
