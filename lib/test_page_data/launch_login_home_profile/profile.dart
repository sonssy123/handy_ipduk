import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/login.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/my_page.dart';
import 'package:handy_ipduk/test_page_data/launch_login_home_profile/storage_converter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _profileImageUrl = '';
  String _name = '';

  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  Future<void> getUserInfo() async {
    try {
      final User? user = _auth.currentUser;
      if (user != null) {
        final DocumentSnapshot<Map<String, dynamic>> userInfo =
            await _firestore.collection('tb_user').doc(user.uid).get();

        // userInfo.data(); // << FromJson 으로 감싸서 쓴다 [Freezed : Map 할 수도 있음]

        setState(() {
          _name = userInfo['name'] ?? '';
          print('User ID: ${user.uid}');
        });

        final String profileImageUrl = userInfo['profile_image_url'] ?? '';
        if (profileImageUrl.isNotEmpty) {
          final String? imageData =
              await ImageConverter.getImageData(profileImageUrl);
          setState(() {
            _profileImageUrl = imageData!;
          });
        }
      }
    } catch (e) {
      rethrow;
    }
  }

  void _myPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyPage()),
    );
  }

  Future<void> _logout() async {
    try {
      await _auth.signOut();
      Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
      print('로그아웃 되었습니다');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
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
                    SizedBox(height: SizeConverter.getHeight(context, 50)),
                    Container(
                      width: SizeConverter.getWidth(context, 200),
                      height: SizeConverter.getHeight(context, 200),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.amber),
                        // border: Border.all(color: const Color.fromARGB(255, 40, 40, 40)),
                        image: _profileImageUrl.isNotEmpty
                            ? DecorationImage(
                                image: NetworkImage(_profileImageUrl),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        _name,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConverter.getHeight(context, 50)),
                    Container(
                      width: SizeConverter.getWidth(context, 350),
                      height: SizeConverter.getHeight(context, 200),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: IconButton(
                                  icon: const Icon(Icons.person),
                                  color: ColorExtension.accentColor,
                                  iconSize: 30,
                                  onPressed: _myPage,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: IconButton(
                                  icon: const Icon(Icons.person),
                                  color: ColorExtension.accentColor,
                                  iconSize: 30,
                                  onPressed: () {},
                                ),
                              ),
                            ],
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

/*

Launch 화면



1. Authentication 에서 User 정보가 있는지 확인 ()


2. 이전에 로그아웃을 했는지, 안했는지 두가지 경우 확인


  - [1]. 로그아웃을 하지 않았을 경우 ()

    : (1). SharedPreferences 으로 이전 상태를 반영 ()

    : (2). 해당 User 의 정보를 가져오기 ()

    : (3). 자동 로그인 ()

    : (4). Home 화면으로 이동 ()



  - [2]. 로그아웃을 했을 경우

    : (1). Login 화면으로 이동 ()

*/
