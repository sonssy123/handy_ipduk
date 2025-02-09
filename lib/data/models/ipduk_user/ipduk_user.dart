import 'package:freezed_annotation/freezed_annotation.dart';
part 'ipduk_user.freezed.dart';
part 'ipduk_user.g.dart';

@freezed
class IpdukUser with _$IpdukUser {
  const factory IpdukUser({
    required String uid,
    required String email,
    required String name,
    required String nation,
    required String imageUrl,
    required List<String> subscribe,
  }) = _IpdukUser;

  factory IpdukUser.fromJson(Map<String, dynamic> json) =>
      _$IpdukUserFromJson(json);
}
