import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart'; // JSON 파일 : 이미지 가져오기
import 'package:handy_ipduk/presentation/main_views/sub_views/home/artist_profile/artist_profile_viewmodel.dart'; // FirebaseStorage 연동 import

class ArtistProfileView extends StatefulWidget {
  const ArtistProfileView({super.key});

  @override
  State<ArtistProfileView> createState() => _ArtistProfileViewState();
}

class _ArtistProfileViewState extends State<ArtistProfileView> {
  final storageRef = FirebaseStorage.instance.ref();

  Future<String?> getImageData() async {
    try {
      // 파일 경로 및 이름을 사용하여 참조 생성
      final imageRef = storageRef.child("artist_profile/테스트1.png");
      // 이미지 다운로드 URL 받기
      final String imgeDownloadURL = await imageRef.getDownloadURL();
      return imgeDownloadURL;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Artist Profile'),
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: FutureBuilder<String?>(
                future: getImageData(),
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
                    // JSON 데이터에서 mainimage를 가져와서 ArtistProfile 객체를 생성
                    final artistProfile = ArtistProfile.fromJson({
                      'mainimage': snapshot.data,
                    });
                    // ArtistProfile 객체의 mainimage를 사용하여 이미지를 표시
                    return Column(
                      children: [
                        Image.network(artistProfile.mainimage),
                      ],
                    );
                  } else {
                    return const Center(
                      child: Text('데이터가 없습니다'),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
