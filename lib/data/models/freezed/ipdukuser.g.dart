// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipdukuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IpdukUserImpl _$$IpdukUserImplFromJson(Map<String, dynamic> json) =>
    _$IpdukUserImpl(
      ipdukuser: json['ipdukuser'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IpdukUserImplToJson(_$IpdukUserImpl instance) =>
    <String, dynamic>{
      'ipdukuser': instance.ipdukuser,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ipdukuserContents: (json['ipdukuserContents'] as List<dynamic>)
          .map((e) => IpdukUserContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ipdukuserContents': instance.ipdukuserContents,
    };

_$IpdukUserContentImpl _$$IpdukUserContentImplFromJson(
        Map<String, dynamic> json) =>
    _$IpdukUserContentImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      nation: json['nation'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
    );

Map<String, dynamic> _$$IpdukUserContentImplToJson(
        _$IpdukUserContentImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'nation': instance.nation,
      'profileImageUrl': instance.profileImageUrl,
    };
