import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/ui/firebase_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/data/models/ipduk_user/ipduk_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

final userStoreProvider =
    ChangeNotifierProvider<UserStore>((ref) => UserStore());

class UserStore extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  IpdukUser? _user;
  IpdukUser? get user => _user;

  Future<void> login(String email, String password,
      {required VoidCallback onSuccess,
      required ErrorCallback onFailure}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      final user = userCredential.user;

      if (user != null) {
        final DocumentSnapshot<Map<String, dynamic>> userInfo =
            await _firestore.collection('tb_user').doc(user.uid).get();

        final Map<String, dynamic> userData = userInfo.data()!;

        final IpdukUser ipdukUser = IpdukUser.fromJson(userData);
        _user = ipdukUser;

        prefs.setString('email', email);
        prefs.setString('password', password);

        notifyListeners();
        onSuccess();
      } else {
        throw Exception('이메일 또는 비밀번호가 잘못되었습니다');
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        onFailure(e);
      } else {
        onFailure(FirebaseAuthException(
            code: '유저 데이터 업데이트 실패', message: '유저 데이터를 가져오는 도중 오류가 발생했습니다'));
      }
    }
  }
}
