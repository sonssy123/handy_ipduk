import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/screen_theme_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final settingsStoreProvider =
    ChangeNotifierProvider<SettingsStore>((ref) => SettingsStore());

class SettingsStore extends ChangeNotifier {
  ThemeData? _themeData;
  ThemeData? get themeData => _themeData;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  SettingsStore() {
    _auth.authStateChanges().listen((User? user) {
      if (user == null) {
        _themeData = ScreenThemedata().themeData;
        notifyListeners();
      } else {
        _loadThemeData(user);
      }
    });
  }

  Future<void> _loadThemeData(User user) async {
    DocumentSnapshot userDoc =
        await _firestore.collection('tb_user').doc(user.uid).get();
    if (userDoc.exists && userDoc.data() != null) {
      var data = userDoc.data() as Map<String, dynamic>;
      bool isSelectTheme = data['isSelectTheme'] ?? false;
      _themeData = isSelectTheme
          ? ScreenThemedata().darkThemeData
          : ScreenThemedata().themeData;
    } else {
      _themeData = ScreenThemedata().themeData;
    }
    notifyListeners();
  }

  Future<void> toggleTheme(bool isSelectTheme) async {
    _themeData = isSelectTheme
        ? ScreenThemedata().darkThemeData
        : ScreenThemedata().themeData;
    notifyListeners();
    await _saveThemeData(isSelectTheme);
  }

  Future<void> _saveThemeData(bool isSelectTheme) async {
    User? user = _auth.currentUser;
    if (user != null) {
      await _firestore.collection('tb_user').doc(user.uid).set({
        'isSelectTheme': isSelectTheme,
      }, SetOptions(merge: true));
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    _themeData = ScreenThemedata().themeData;
    notifyListeners();
  }
}
