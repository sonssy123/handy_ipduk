import 'package:handy_ipduk/data/models/freezed/user.dart';

class ResUser {
  // 서버에서 가져온 data < models < User
  final List<User> tbusers;

  ResUser({required this.tbusers});

  factory ResUser.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonTbusers = json['tb_user'];
    final List<User> tbusers =
        jsonTbusers.map((tbuser) => User.fromJson(tbuser)).toList();

    return ResUser(tbusers: tbusers);
  }
}
