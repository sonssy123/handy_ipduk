// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ipdukuser.dart';

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
  String get ipdukuser => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

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
  $Res call({String ipdukuser, Data data});

  $DataCopyWith<$Res> get data;
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
    Object? ipdukuser = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      ipdukuser: null == ipdukuser
          ? _value.ipdukuser
          : ipdukuser // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({String ipdukuser, Data data});

  @override
  $DataCopyWith<$Res> get data;
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
    Object? ipdukuser = null,
    Object? data = null,
  }) {
    return _then(_$IpdukUserImpl(
      ipdukuser: null == ipdukuser
          ? _value.ipdukuser
          : ipdukuser // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IpdukUserImpl implements _IpdukUser {
  const _$IpdukUserImpl({required this.ipdukuser, required this.data});

  factory _$IpdukUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$IpdukUserImplFromJson(json);

  @override
  final String ipdukuser;
  @override
  final Data data;

  @override
  String toString() {
    return 'IpdukUser(ipdukuser: $ipdukuser, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpdukUserImpl &&
            (identical(other.ipdukuser, ipdukuser) ||
                other.ipdukuser == ipdukuser) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ipdukuser, data);

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
      {required final String ipdukuser,
      required final Data data}) = _$IpdukUserImpl;

  factory _IpdukUser.fromJson(Map<String, dynamic> json) =
      _$IpdukUserImpl.fromJson;

  @override
  String get ipdukuser;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$IpdukUserImplCopyWith<_$IpdukUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<IpdukUserContent> get ipdukuserContents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<IpdukUserContent> ipdukuserContents});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipdukuserContents = null,
  }) {
    return _then(_value.copyWith(
      ipdukuserContents: null == ipdukuserContents
          ? _value.ipdukuserContents
          : ipdukuserContents // ignore: cast_nullable_to_non_nullable
              as List<IpdukUserContent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IpdukUserContent> ipdukuserContents});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipdukuserContents = null,
  }) {
    return _then(_$DataImpl(
      ipdukuserContents: null == ipdukuserContents
          ? _value._ipdukuserContents
          : ipdukuserContents // ignore: cast_nullable_to_non_nullable
              as List<IpdukUserContent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({required final List<IpdukUserContent> ipdukuserContents})
      : _ipdukuserContents = ipdukuserContents;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<IpdukUserContent> _ipdukuserContents;
  @override
  List<IpdukUserContent> get ipdukuserContents {
    if (_ipdukuserContents is EqualUnmodifiableListView)
      return _ipdukuserContents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ipdukuserContents);
  }

  @override
  String toString() {
    return 'Data(ipdukuserContents: $ipdukuserContents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._ipdukuserContents, _ipdukuserContents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ipdukuserContents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final List<IpdukUserContent> ipdukuserContents}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<IpdukUserContent> get ipdukuserContents;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IpdukUserContent _$IpdukUserContentFromJson(Map<String, dynamic> json) {
  return _IpdukUserContent.fromJson(json);
}

/// @nodoc
mixin _$IpdukUserContent {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nation => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IpdukUserContentCopyWith<IpdukUserContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpdukUserContentCopyWith<$Res> {
  factory $IpdukUserContentCopyWith(
          IpdukUserContent value, $Res Function(IpdukUserContent) then) =
      _$IpdukUserContentCopyWithImpl<$Res, IpdukUserContent>;
  @useResult
  $Res call(
      {String uid,
      String email,
      String name,
      String nation,
      String profileImageUrl});
}

/// @nodoc
class _$IpdukUserContentCopyWithImpl<$Res, $Val extends IpdukUserContent>
    implements $IpdukUserContentCopyWith<$Res> {
  _$IpdukUserContentCopyWithImpl(this._value, this._then);

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
    Object? profileImageUrl = null,
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
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IpdukUserContentImplCopyWith<$Res>
    implements $IpdukUserContentCopyWith<$Res> {
  factory _$$IpdukUserContentImplCopyWith(_$IpdukUserContentImpl value,
          $Res Function(_$IpdukUserContentImpl) then) =
      __$$IpdukUserContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String email,
      String name,
      String nation,
      String profileImageUrl});
}

/// @nodoc
class __$$IpdukUserContentImplCopyWithImpl<$Res>
    extends _$IpdukUserContentCopyWithImpl<$Res, _$IpdukUserContentImpl>
    implements _$$IpdukUserContentImplCopyWith<$Res> {
  __$$IpdukUserContentImplCopyWithImpl(_$IpdukUserContentImpl _value,
      $Res Function(_$IpdukUserContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? name = null,
    Object? nation = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_$IpdukUserContentImpl(
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
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IpdukUserContentImpl implements _IpdukUserContent {
  const _$IpdukUserContentImpl(
      {required this.uid,
      required this.email,
      required this.name,
      required this.nation,
      required this.profileImageUrl});

  factory _$IpdukUserContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$IpdukUserContentImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String name;
  @override
  final String nation;
  @override
  final String profileImageUrl;

  @override
  String toString() {
    return 'IpdukUserContent(uid: $uid, email: $email, name: $name, nation: $nation, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpdukUserContentImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nation, nation) || other.nation == nation) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, email, name, nation, profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpdukUserContentImplCopyWith<_$IpdukUserContentImpl> get copyWith =>
      __$$IpdukUserContentImplCopyWithImpl<_$IpdukUserContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IpdukUserContentImplToJson(
      this,
    );
  }
}

abstract class _IpdukUserContent implements IpdukUserContent {
  const factory _IpdukUserContent(
      {required final String uid,
      required final String email,
      required final String name,
      required final String nation,
      required final String profileImageUrl}) = _$IpdukUserContentImpl;

  factory _IpdukUserContent.fromJson(Map<String, dynamic> json) =
      _$IpdukUserContentImpl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get name;
  @override
  String get nation;
  @override
  String get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$IpdukUserContentImplCopyWith<_$IpdukUserContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
