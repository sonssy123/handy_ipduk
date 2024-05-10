import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'ipdukuser.freezed.dart';
part 'ipdukuser.g.dart';

// JSON 문자열을 IpdukUser 객체로 파싱
IpdukUser ipdukuserFromJson(String str) => IpdukUser.fromJson(json.decode(str));

// IpdukUser 객체를 JSON 문자열로 직렬화
String ipdukuserToJson(IpdukUser data) => json.encode(data.toJson());

@freezed
class IpdukUser with _$IpdukUser {
  const factory IpdukUser({
    required String ipdukuser,
    required Data data,
  }) = _IpdukUser;

  factory IpdukUser.fromJson(Map<String, dynamic> json) =>
      _$IpdukUserFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<IpdukUserContent> ipdukuserContents,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class IpdukUserContent with _$IpdukUserContent {
  const factory IpdukUserContent({
    required String uid,
    required String email,
    required String name,
    required String nation,
    required String profileImageUrl,
  }) = _IpdukUserContent;

  factory IpdukUserContent.fromJson(Map<String, dynamic> json) =>
      _$IpdukUserContentFromJson(json);
}
