import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:handy_ipduk/test_page/firebase_image_data_converter.dart';
import 'package:handy_ipduk/test_page/image_converter.dart';
import 'image_test.dart';

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
                    future: ImageConverter.getImageData(ImageId.image_0),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const SizedBox.shrink();
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Error: ${snapshot.error}'),
                        );
                      } else if (snapshot.hasData) {
                        final firebasestorageimagedata =
                            FirebaseStorageImgaeData.fromJson({
                          'imageData': snapshot.data,
                        });
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
