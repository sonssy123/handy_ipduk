import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:handy_ipduk/presentation/utils/firebase_image_data_converter.dart';
import 'package:handy_ipduk/presentation/utils/image_converter.dart';

class StorageTest extends StatefulWidget {
  const StorageTest({super.key});

  @override
  State<StorageTest> createState() => _StorageTestState();
}

class _StorageTestState extends State<StorageTest> {
  final storageRef = FirebaseStorage.instance.ref();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('StorageTest 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  FutureBuilder<String?>(
                    future: ImageConverter.getImageData(),
                    builder: (context, snapshot) {
                      // 데이터를 가져오는 중인 경우, 아무것도 표시하지 않는다
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox.shrink();
                        // 이슈가 발생했을 경우, 'Error: ${snapshot.error}'를 표시
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Error: ${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        // JSON 데이터에서 imageData를 가져와서 ArtistProfile 객체를 생성
                        final firebasestorageimagedata =
                            FirebaseStorageImgaeData.fromJson({
                          'imageData': snapshot.data,
                        });
                        // ArtistProfile 객체의 imageData를 사용하여 이미지를 표시
                        return Column(
                          children: [
                            Image.network(firebasestorageimagedata.imageData),
                          ],
                        );
                      } else {
                        return const Center(
                          child: Text('데이터가 없습니다'),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
