// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipduk_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IpdukUserImpl _$$IpdukUserImplFromJson(Map<String, dynamic> json) =>
    _$IpdukUserImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      nation: json['nation'] as String,
      imageUrl: json['imageUrl'] as String,
      subscribe:
          (json['subscribe'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$IpdukUserImplToJson(_$IpdukUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'nation': instance.nation,
      'imageUrl': instance.imageUrl,
      'subscribe': instance.subscribe,
    };
