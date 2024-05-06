import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _name = '';
  String _email = '';
  String _nation = '';

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
            await _firestore.collection('tb_admin').doc(user.uid).get();
        setState(() {
          _name = userInfo['name'] ?? '';
          _email = userInfo['email'] ?? '';
          _nation = userInfo['nation'] ?? '';
        });
      }
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
          title: const Text('My Page 화면'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: SizeConverter.getHeight(context, 50)),
                    Container(
                      width: SizeConverter.getWidth(context, 410),
                      height: SizeConverter.getHeight(context, 500),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              '내 정보',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 40)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              '이메일',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 10)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              _email,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 30)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              '닉네임',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 10)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              _name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 30)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              '국가',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 10)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Text(
                              _nation,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
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
