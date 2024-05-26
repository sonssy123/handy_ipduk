import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/domain/providers/user_store_notifier.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';
import 'package:handy_ipduk/presentation/common/firebase_storage_image_data.dart';
import 'package:handy_ipduk/presentation/common/profile_image.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/settings_page/settings_page.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final storageRef = FirebaseStorage.instance.ref();

  Future<String?> getImageData(String? imageUrl) async {
    if (imageUrl == null) {
      return null;
    }

    try {
      final imageRef = storageRef.child("user/$imageUrl");
      final String imgeDownloadURL = await imageRef.getDownloadURL();
      return imgeDownloadURL;
    } catch (e) {
      return null;
    }
  }

  void _settingsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SettingsPage()),
    );
  }

  // context 수정 / prefs 가 아닌 이메일 패스워드만 clear
  Future<void> _logout() async {
    try {
      await _auth.signOut();
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    final userStore = ref.watch(userStoreProvider);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Proflie 화면'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: _logout,
            ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    FutureBuilder<String?>(
                      future: getImageData(userStore.user?.imageUrl),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final profile = FirebaseStorageImgaeData.fromJson({
                            'imageData': snapshot.data,
                          });
                          return ProfileImage(
                            imageUrl: profile.imageData,
                            width: 200.w,
                            borderWidth: 2.w,
                            borderColor: const Color.fromARGB(255, 40, 40, 40),
                          );
                        } else {
                          return const Center(
                            child: Text('데이터가 없습니다'),
                          );
                        }
                      },
                    ),
                    SizedBox(height: SizeConverter.getHeight(context, 30)),
                    Container(
                      width: SizeConverter.getWidth(context, 350),
                      height: SizeConverter.getHeight(context, 200),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 40, 40, 40)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              userStore.user?.email ?? 'No Email',
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              userStore.user?.name ?? 'No Name',
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              userStore.user?.nation ?? 'No Nation',
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: IconButton(
                        icon: const Icon(Icons.person),
                        color: ColorExtension.accentColor,
                        iconSize: 30,
                        onPressed: _settingsPage,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
