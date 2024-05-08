// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      user: json['user'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userContents: (json['userContents'] as List<dynamic>)
          .map((e) => UserContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'userContents': instance.userContents,
    };

_$UserContentImpl _$$UserContentImplFromJson(Map<String, dynamic> json) =>
    _$UserContentImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      nation: json['nation'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
    );

Map<String, dynamic> _$$UserContentImplToJson(_$UserContentImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'nation': instance.nation,
      'profileImageUrl': instance.profileImageUrl,
    };
