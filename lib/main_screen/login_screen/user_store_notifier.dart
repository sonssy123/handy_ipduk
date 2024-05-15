import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handy_ipduk/data/models/freezed/ipduk_user.dart';

final userStoreProvider =
    ChangeNotifierProvider<UserStore>((ref) => UserStore());

class UserStore extends ChangeNotifier {
  IpdukUser? _user;
  IpdukUser? get user => _user;

  void setUser(IpdukUser? value) async {
    if (_user == null) {
      return;
    }
    _user = value;
    notifyListeners();
  }
}
