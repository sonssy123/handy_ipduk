import 'package:handy_ipduk/data/models/freezed/ipdukuser.dart';

class ResIpdukUser {
  // 서버에서 가져온 data < models < User
  final List<IpdukUser> tbusers;

  ResIpdukUser({required this.tbusers});

  factory ResIpdukUser.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonTbusers = json['tb_user'];
    final List<IpdukUser> tbusers =
        jsonTbusers.map((tbuser) => IpdukUser.fromJson(tbuser)).toList();

    return ResIpdukUser(tbusers: tbusers);
  }
}
