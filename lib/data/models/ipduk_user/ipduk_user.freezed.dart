// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ipduk_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IpdukUser _$IpdukUserFromJson(Map<String, dynamic> json) {
  return _IpdukUser.fromJson(json);
}

/// @nodoc
mixin _$IpdukUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nation => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<String> get subscribe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IpdukUserCopyWith<IpdukUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpdukUserCopyWith<$Res> {
  factory $IpdukUserCopyWith(IpdukUser value, $Res Function(IpdukUser) then) =
      _$IpdukUserCopyWithImpl<$Res, IpdukUser>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String name,
      String nation,
      String imageUrl,
      List<String> subscribe});
}

/// @nodoc
class _$IpdukUserCopyWithImpl<$Res, $Val extends IpdukUser>
    implements $IpdukUserCopyWith<$Res> {
  _$IpdukUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? name = null,
    Object? nation = null,
    Object? imageUrl = null,
    Object? subscribe = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nation: null == nation
          ? _value.nation
          : nation // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribe: null == subscribe
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IpdukUserImplCopyWith<$Res>
    implements $IpdukUserCopyWith<$Res> {
  factory _$$IpdukUserImplCopyWith(
          _$IpdukUserImpl value, $Res Function(_$IpdukUserImpl) then) =
      __$$IpdukUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String name,
      String nation,
      String imageUrl,
      List<String> subscribe});
}

/// @nodoc
class __$$IpdukUserImplCopyWithImpl<$Res>
    extends _$IpdukUserCopyWithImpl<$Res, _$IpdukUserImpl>
    implements _$$IpdukUserImplCopyWith<$Res> {
  __$$IpdukUserImplCopyWithImpl(
      _$IpdukUserImpl _value, $Res Function(_$IpdukUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? name = null,
    Object? nation = null,
    Object? imageUrl = null,
    Object? subscribe = null,
  }) {
    return _then(_$IpdukUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nation: null == nation
          ? _value.nation
          : nation // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribe: null == subscribe
          ? _value._subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IpdukUserImpl implements _IpdukUser {
  const _$IpdukUserImpl(
      {required this.uid,
      required this.email,
      required this.name,
      required this.nation,
      required this.imageUrl,
      required final List<String> subscribe})
      : _subscribe = subscribe;

  factory _$IpdukUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$IpdukUserImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String name;
  @override
  final String nation;
  @override
  final String imageUrl;
  final List<String> _subscribe;
  @override
  List<String> get subscribe {
    if (_subscribe is EqualUnmodifiableListView) return _subscribe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribe);
  }

  @override
  String toString() {
    return 'IpdukUser(uid: $uid, email: $email, name: $name, nation: $nation, imageUrl: $imageUrl, subscribe: $subscribe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpdukUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nation, nation) || other.nation == nation) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._subscribe, _subscribe));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, name, nation,
      imageUrl, const DeepCollectionEquality().hash(_subscribe));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpdukUserImplCopyWith<_$IpdukUserImpl> get copyWith =>
      __$$IpdukUserImplCopyWithImpl<_$IpdukUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IpdukUserImplToJson(
      this,
    );
  }
}

abstract class _IpdukUser implements IpdukUser {
  const factory _IpdukUser(
      {required final String uid,
      required final String email,
      required final String name,
      required final String nation,
      required final String imageUrl,
      required final List<String> subscribe}) = _$IpdukUserImpl;

  factory _IpdukUser.fromJson(Map<String, dynamic> json) =
      _$IpdukUserImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get name;
  @override
  String get nation;
  @override
  String get imageUrl;
  @override
  List<String> get subscribe;
  @override
  @JsonKey(ignore: true)
  _$$IpdukUserImplCopyWith<_$IpdukUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
