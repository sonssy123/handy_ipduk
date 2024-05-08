import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'user.freezed.dart';
part 'user.g.dart';

// JSON 문자열을 User 객체로 파싱
User userFromJson(String str) => User.fromJson(json.decode(str));

// User 객체를 JSON 문자열로 직렬화
String userToJson(User data) => json.encode(data.toJson());

@freezed
class User with _$User {
  const factory User({
    required String user,
    required Data data,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<UserContent> userContents,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class UserContent with _$UserContent {
  const factory UserContent({
    required String uid,
    required String email,
    required String name,
    required String nation,
    required String profileImageUrl,
  }) = _UserContent;

  factory UserContent.fromJson(Map<String, dynamic> json) =>
      _$UserContentFromJson(json);
}
