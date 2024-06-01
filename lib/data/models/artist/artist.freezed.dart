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
  String get id => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get koreanName => throw _privateConstructorUsedError;
  String get logoImageUrl => throw _privateConstructorUsedError;
  String get artistImageUrl => throw _privateConstructorUsedError;
  String get adVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {String id,
      String englishName,
      String koreanName,
      String logoImageUrl,
      String artistImageUrl,
      String adVideo});
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
    Object? id = null,
    Object? englishName = null,
    Object? koreanName = null,
    Object? logoImageUrl = null,
    Object? artistImageUrl = null,
    Object? adVideo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      koreanName: null == koreanName
          ? _value.koreanName
          : koreanName // ignore: cast_nullable_to_non_nullable
              as String,
      logoImageUrl: null == logoImageUrl
          ? _value.logoImageUrl
          : logoImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artistImageUrl: null == artistImageUrl
          ? _value.artistImageUrl
          : artistImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adVideo: null == adVideo
          ? _value.adVideo
          : adVideo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String englishName,
      String koreanName,
      String logoImageUrl,
      String artistImageUrl,
      String adVideo});
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
    Object? id = null,
    Object? englishName = null,
    Object? koreanName = null,
    Object? logoImageUrl = null,
    Object? artistImageUrl = null,
    Object? adVideo = null,
  }) {
    return _then(_$ArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      koreanName: null == koreanName
          ? _value.koreanName
          : koreanName // ignore: cast_nullable_to_non_nullable
              as String,
      logoImageUrl: null == logoImageUrl
          ? _value.logoImageUrl
          : logoImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      artistImageUrl: null == artistImageUrl
          ? _value.artistImageUrl
          : artistImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      adVideo: null == adVideo
          ? _value.adVideo
          : adVideo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {required this.id,
      required this.englishName,
      required this.koreanName,
      required this.logoImageUrl,
      required this.artistImageUrl,
      required this.adVideo});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final String id;
  @override
  final String englishName;
  @override
  final String koreanName;
  @override
  final String logoImageUrl;
  @override
  final String artistImageUrl;
  @override
  final String adVideo;

  @override
  String toString() {
    return 'Artist(id: $id, englishName: $englishName, koreanName: $koreanName, logoImageUrl: $logoImageUrl, artistImageUrl: $artistImageUrl, adVideo: $adVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.koreanName, koreanName) ||
                other.koreanName == koreanName) &&
            (identical(other.logoImageUrl, logoImageUrl) ||
                other.logoImageUrl == logoImageUrl) &&
            (identical(other.artistImageUrl, artistImageUrl) ||
                other.artistImageUrl == artistImageUrl) &&
            (identical(other.adVideo, adVideo) || other.adVideo == adVideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, englishName, koreanName,
      logoImageUrl, artistImageUrl, adVideo);

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
      {required final String id,
      required final String englishName,
      required final String koreanName,
      required final String logoImageUrl,
      required final String artistImageUrl,
      required final String adVideo}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  String get id;
  @override
  String get englishName;
  @override
  String get koreanName;
  @override
  String get logoImageUrl;
  @override
  String get artistImageUrl;
  @override
  String get adVideo;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
