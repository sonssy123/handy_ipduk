import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/domain/providers/user_store_notifier.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';
import 'package:handy_ipduk/presentation/common/profile_image.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/settings_page/settings_page_view.dart';
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

  String? _profileImageUrl;
  final String _profileImage = '';

  @override
  void initState() {
    super.initState();
    _updateImage();
  }

  Future<void> _updateImage() async {
    final prefs = await SharedPreferences.getInstance();
    final cachedImageUrl = prefs.getString(_profileImage);

    if (cachedImageUrl != null) {
      setState(() {
        _profileImageUrl = cachedImageUrl;
      });
    } else {
      final userStore = ref.read(userStoreProvider);
      final imageUrl = userStore.user?.imageUrl;
      if (imageUrl != null) {
        final downloadUrl = await getImageData(imageUrl);
        if (downloadUrl != null) {
          setState(() {
            _profileImageUrl = downloadUrl;
          });
          await prefs.setString(_profileImage, downloadUrl);
        }
      }
    }
  }

  Future<String?> getImageData(String imageUrl) async {
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
      MaterialPageRoute(builder: (context) => const SettingsPageView()),
    );
  }

  Future<void> _logout() async {
    try {
      await _auth.signOut();

      final prefs = await SharedPreferences.getInstance();

      await prefs.remove('email');
      await prefs.remove('password');
      await prefs.remove(_profileImage);

      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    final userStore = ref.watch(userStoreProvider);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 66, 66, 66),
        appBar: AppBar(
          title: const Text('Profile 화면'),
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: _profileImageUrl != null
                          ? ProfileImage(
                              imageUrl: _profileImageUrl!,
                              width: 200.w,
                              borderWidth: 2.w,
                              borderColor:
                                  const Color.fromARGB(255, 40, 40, 40),
                            )
                          : const SizedBox.shrink(),
                    ),
                    Container(
                      width: 200.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 40, 40, 40)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            userStore.user?.name ?? 'No Name',
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50.h),
                    Container(
                      width: 350.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 40, 40, 40)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: IconButton(
                              icon: const Icon(Icons.settings),
                              color: ColorExtension.accentColor,
                              iconSize: 30,
                              onPressed: _settingsPage,
                            ),
                          ),
                        ],
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
