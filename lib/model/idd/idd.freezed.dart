// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'idd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Idd _$IddFromJson(Map<String, dynamic> json) {
  return _Idd.fromJson(json);
}

/// @nodoc
mixin _$Idd {
  String get bgoogleMaps => throw _privateConstructorUsedError;
  String get openStreetMaps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IddCopyWith<Idd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IddCopyWith<$Res> {
  factory $IddCopyWith(Idd value, $Res Function(Idd) then) =
      _$IddCopyWithImpl<$Res, Idd>;
  @useResult
  $Res call({String bgoogleMaps, String openStreetMaps});
}

/// @nodoc
class _$IddCopyWithImpl<$Res, $Val extends Idd> implements $IddCopyWith<$Res> {
  _$IddCopyWithImpl(this._value, this._then);

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
abstract class _$$_IddCopyWith<$Res> implements $IddCopyWith<$Res> {
  factory _$$_IddCopyWith(_$_Idd value, $Res Function(_$_Idd) then) =
      __$$_IddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bgoogleMaps, String openStreetMaps});
}

/// @nodoc
class __$$_IddCopyWithImpl<$Res> extends _$IddCopyWithImpl<$Res, _$_Idd>
    implements _$$_IddCopyWith<$Res> {
  __$$_IddCopyWithImpl(_$_Idd _value, $Res Function(_$_Idd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bgoogleMaps = null,
    Object? openStreetMaps = null,
  }) {
    return _then(_$_Idd(
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
class _$_Idd implements _Idd {
  const _$_Idd({required this.bgoogleMaps, required this.openStreetMaps});

  factory _$_Idd.fromJson(Map<String, dynamic> json) => _$$_IddFromJson(json);

  @override
  final String bgoogleMaps;
  @override
  final String openStreetMaps;

  @override
  String toString() {
    return 'Idd(bgoogleMaps: $bgoogleMaps, openStreetMaps: $openStreetMaps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idd &&
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
  _$$_IddCopyWith<_$_Idd> get copyWith =>
      __$$_IddCopyWithImpl<_$_Idd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IddToJson(
      this,
    );
  }
}

abstract class _Idd implements Idd {
  const factory _Idd(
      {required final String bgoogleMaps,
      required final String openStreetMaps}) = _$_Idd;

  factory _Idd.fromJson(Map<String, dynamic> json) = _$_Idd.fromJson;

  @override
  String get bgoogleMaps;
  @override
  String get openStreetMaps;
  @override
  @JsonKey(ignore: true)
  _$$_IddCopyWith<_$_Idd> get copyWith => throw _privateConstructorUsedError;
}
