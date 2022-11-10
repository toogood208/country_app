// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'maps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Maps _$MapsFromJson(Map<String, dynamic> json) {
  return _Maps.fromJson(json);
}

/// @nodoc
mixin _$Maps {
  String get bgoogleMaps => throw _privateConstructorUsedError;
  String get openStreetMaps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapsCopyWith<Maps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsCopyWith<$Res> {
  factory $MapsCopyWith(Maps value, $Res Function(Maps) then) =
      _$MapsCopyWithImpl<$Res, Maps>;
  @useResult
  $Res call({String bgoogleMaps, String openStreetMaps});
}

/// @nodoc
class _$MapsCopyWithImpl<$Res, $Val extends Maps>
    implements $MapsCopyWith<$Res> {
  _$MapsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgoogleMaps = null,
    Object? openStreetMaps = null,
  }) {
    return _then(_value.copyWith(
      bgoogleMaps: null == bgoogleMaps
          ? _value.bgoogleMaps
          : bgoogleMaps // ignore: cast_nullable_to_non_nullable
              as String,
      openStreetMaps: null == openStreetMaps
          ? _value.openStreetMaps
          : openStreetMaps // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapsCopyWith<$Res> implements $MapsCopyWith<$Res> {
  factory _$$_MapsCopyWith(_$_Maps value, $Res Function(_$_Maps) then) =
      __$$_MapsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bgoogleMaps, String openStreetMaps});
}

/// @nodoc
class __$$_MapsCopyWithImpl<$Res> extends _$MapsCopyWithImpl<$Res, _$_Maps>
    implements _$$_MapsCopyWith<$Res> {
  __$$_MapsCopyWithImpl(_$_Maps _value, $Res Function(_$_Maps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgoogleMaps = null,
    Object? openStreetMaps = null,
  }) {
    return _then(_$_Maps(
      bgoogleMaps: null == bgoogleMaps
          ? _value.bgoogleMaps
          : bgoogleMaps // ignore: cast_nullable_to_non_nullable
              as String,
      openStreetMaps: null == openStreetMaps
          ? _value.openStreetMaps
          : openStreetMaps // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Maps implements _Maps {
  const _$_Maps({required this.bgoogleMaps, required this.openStreetMaps});

  factory _$_Maps.fromJson(Map<String, dynamic> json) => _$$_MapsFromJson(json);

  @override
  final String bgoogleMaps;
  @override
  final String openStreetMaps;

  @override
  String toString() {
    return 'Maps(bgoogleMaps: $bgoogleMaps, openStreetMaps: $openStreetMaps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Maps &&
            (identical(other.bgoogleMaps, bgoogleMaps) ||
                other.bgoogleMaps == bgoogleMaps) &&
            (identical(other.openStreetMaps, openStreetMaps) ||
                other.openStreetMaps == openStreetMaps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bgoogleMaps, openStreetMaps);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapsCopyWith<_$_Maps> get copyWith =>
      __$$_MapsCopyWithImpl<_$_Maps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapsToJson(
      this,
    );
  }
}

abstract class _Maps implements Maps {
  const factory _Maps(
      {required final String bgoogleMaps,
      required final String openStreetMaps}) = _$_Maps;

  factory _Maps.fromJson(Map<String, dynamic> json) = _$_Maps.fromJson;

  @override
  String get bgoogleMaps;
  @override
  String get openStreetMaps;
  @override
  @JsonKey(ignore: true)
  _$$_MapsCopyWith<_$_Maps> get copyWith => throw _privateConstructorUsedError;
}
