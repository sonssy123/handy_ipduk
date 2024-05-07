// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  String get artist => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call({String artist, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artist, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artist = null,
    Object? data = null,
  }) {
    return _then(_$ArtistImpl(
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
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
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl({required this.artist, required this.data});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final String artist;
  @override
  final Data data;

  @override
  String toString() {
    return 'Artist(artist: $artist, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artist, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {required final String artist, required final Data data}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  String get artist;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<ArtistContent> get artistContents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<ArtistContent> artistContents});
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
    Object? artistContents = null,
  }) {
    return _then(_value.copyWith(
      artistContents: null == artistContents
          ? _value.artistContents
          : artistContents // ignore: cast_nullable_to_non_nullable
              as List<ArtistContent>,
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
  $Res call({List<ArtistContent> artistContents});
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
    Object? artistContents = null,
  }) {
    return _then(_$DataImpl(
      artistContents: null == artistContents
          ? _value._artistContents
          : artistContents // ignore: cast_nullable_to_non_nullable
              as List<ArtistContent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({required final List<ArtistContent> artistContents})
      : _artistContents = artistContents;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<ArtistContent> _artistContents;
  @override
  List<ArtistContent> get artistContents {
    if (_artistContents is EqualUnmodifiableListView) return _artistContents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artistContents);
  }

  @override
  String toString() {
    return 'Data(artistContents: $artistContents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._artistContents, _artistContents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_artistContents));

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
  const factory _Data({required final List<ArtistContent> artistContents}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  List<ArtistContent> get artistContents;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistContent _$ArtistContentFromJson(Map<String, dynamic> json) {
  return _ArtistContent.fromJson(json);
}

/// @nodoc
mixin _$ArtistContent {
  int get artistid => throw _privateConstructorUsedError;
  String get artistname => throw _privateConstructorUsedError;
  String get contenttype => throw _privateConstructorUsedError;
  String get contenturl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistContentCopyWith<ArtistContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistContentCopyWith<$Res> {
  factory $ArtistContentCopyWith(
          ArtistContent value, $Res Function(ArtistContent) then) =
      _$ArtistContentCopyWithImpl<$Res, ArtistContent>;
  @useResult
  $Res call(
      {int artistid, String artistname, String contenttype, String contenturl});
}

/// @nodoc
class _$ArtistContentCopyWithImpl<$Res, $Val extends ArtistContent>
    implements $ArtistContentCopyWith<$Res> {
  _$ArtistContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistid = null,
    Object? artistname = null,
    Object? contenttype = null,
    Object? contenturl = null,
  }) {
    return _then(_value.copyWith(
      artistid: null == artistid
          ? _value.artistid
          : artistid // ignore: cast_nullable_to_non_nullable
              as int,
      artistname: null == artistname
          ? _value.artistname
          : artistname // ignore: cast_nullable_to_non_nullable
              as String,
      contenttype: null == contenttype
          ? _value.contenttype
          : contenttype // ignore: cast_nullable_to_non_nullable
              as String,
      contenturl: null == contenturl
          ? _value.contenturl
          : contenturl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistContentImplCopyWith<$Res>
    implements $ArtistContentCopyWith<$Res> {
  factory _$$ArtistContentImplCopyWith(
          _$ArtistContentImpl value, $Res Function(_$ArtistContentImpl) then) =
      __$$ArtistContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int artistid, String artistname, String contenttype, String contenturl});
}

/// @nodoc
class __$$ArtistContentImplCopyWithImpl<$Res>
    extends _$ArtistContentCopyWithImpl<$Res, _$ArtistContentImpl>
    implements _$$ArtistContentImplCopyWith<$Res> {
  __$$ArtistContentImplCopyWithImpl(
      _$ArtistContentImpl _value, $Res Function(_$ArtistContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistid = null,
    Object? artistname = null,
    Object? contenttype = null,
    Object? contenturl = null,
  }) {
    return _then(_$ArtistContentImpl(
      artistid: null == artistid
          ? _value.artistid
          : artistid // ignore: cast_nullable_to_non_nullable
              as int,
      artistname: null == artistname
          ? _value.artistname
          : artistname // ignore: cast_nullable_to_non_nullable
              as String,
      contenttype: null == contenttype
          ? _value.contenttype
          : contenttype // ignore: cast_nullable_to_non_nullable
              as String,
      contenturl: null == contenturl
          ? _value.contenturl
          : contenturl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistContentImpl implements _ArtistContent {
  const _$ArtistContentImpl(
      {required this.artistid,
      required this.artistname,
      required this.contenttype,
      required this.contenturl});

  factory _$ArtistContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistContentImplFromJson(json);

  @override
  final int artistid;
  @override
  final String artistname;
  @override
  final String contenttype;
  @override
  final String contenturl;

  @override
  String toString() {
    return 'ArtistContent(artistid: $artistid, artistname: $artistname, contenttype: $contenttype, contenturl: $contenturl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistContentImpl &&
            (identical(other.artistid, artistid) ||
                other.artistid == artistid) &&
            (identical(other.artistname, artistname) ||
                other.artistname == artistname) &&
            (identical(other.contenttype, contenttype) ||
                other.contenttype == contenttype) &&
            (identical(other.contenturl, contenturl) ||
                other.contenturl == contenturl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, artistid, artistname, contenttype, contenturl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistContentImplCopyWith<_$ArtistContentImpl> get copyWith =>
      __$$ArtistContentImplCopyWithImpl<_$ArtistContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistContentImplToJson(
      this,
    );
  }
}

abstract class _ArtistContent implements ArtistContent {
  const factory _ArtistContent(
      {required final int artistid,
      required final String artistname,
      required final String contenttype,
      required final String contenturl}) = _$ArtistContentImpl;

  factory _ArtistContent.fromJson(Map<String, dynamic> json) =
      _$ArtistContentImpl.fromJson;

  @override
  int get artistid;
  @override
  String get artistname;
  @override
  String get contenttype;
  @override
  String get contenturl;
  @override
  @JsonKey(ignore: true)
  _$$ArtistContentImplCopyWith<_$ArtistContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
