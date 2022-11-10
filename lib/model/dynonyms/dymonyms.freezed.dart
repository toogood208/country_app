// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dymonyms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Demonyms _$DemonymsFromJson(Map<String, dynamic> json) {
  return _Demonyms.fromJson(json);
}

/// @nodoc
mixin _$Demonyms {
  Eng get eng => throw _privateConstructorUsedError;
  Eng get fra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DemonymsCopyWith<Demonyms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemonymsCopyWith<$Res> {
  factory $DemonymsCopyWith(Demonyms value, $Res Function(Demonyms) then) =
      _$DemonymsCopyWithImpl<$Res, Demonyms>;
  @useResult
  $Res call({Eng eng, Eng fra});

  $EngCopyWith<$Res> get eng;
  $EngCopyWith<$Res> get fra;
}

/// @nodoc
class _$DemonymsCopyWithImpl<$Res, $Val extends Demonyms>
    implements $DemonymsCopyWith<$Res> {
  _$DemonymsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eng = null,
    Object? fra = null,
  }) {
    return _then(_value.copyWith(
      eng: null == eng
          ? _value.eng
          : eng // ignore: cast_nullable_to_non_nullable
              as Eng,
      fra: null == fra
          ? _value.fra
          : fra // ignore: cast_nullable_to_non_nullable
              as Eng,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EngCopyWith<$Res> get eng {
    return $EngCopyWith<$Res>(_value.eng, (value) {
      return _then(_value.copyWith(eng: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EngCopyWith<$Res> get fra {
    return $EngCopyWith<$Res>(_value.fra, (value) {
      return _then(_value.copyWith(fra: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DemonymsCopyWith<$Res> implements $DemonymsCopyWith<$Res> {
  factory _$$_DemonymsCopyWith(
          _$_Demonyms value, $Res Function(_$_Demonyms) then) =
      __$$_DemonymsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Eng eng, Eng fra});

  @override
  $EngCopyWith<$Res> get eng;
  @override
  $EngCopyWith<$Res> get fra;
}

/// @nodoc
class __$$_DemonymsCopyWithImpl<$Res>
    extends _$DemonymsCopyWithImpl<$Res, _$_Demonyms>
    implements _$$_DemonymsCopyWith<$Res> {
  __$$_DemonymsCopyWithImpl(
      _$_Demonyms _value, $Res Function(_$_Demonyms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eng = null,
    Object? fra = null,
  }) {
    return _then(_$_Demonyms(
      eng: null == eng
          ? _value.eng
          : eng // ignore: cast_nullable_to_non_nullable
              as Eng,
      fra: null == fra
          ? _value.fra
          : fra // ignore: cast_nullable_to_non_nullable
              as Eng,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Demonyms implements _Demonyms {
  const _$_Demonyms({required this.eng, required this.fra});

  factory _$_Demonyms.fromJson(Map<String, dynamic> json) =>
      _$$_DemonymsFromJson(json);

  @override
  final Eng eng;
  @override
  final Eng fra;

  @override
  String toString() {
    return 'Demonyms(eng: $eng, fra: $fra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Demonyms &&
            (identical(other.eng, eng) || other.eng == eng) &&
            (identical(other.fra, fra) || other.fra == fra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eng, fra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DemonymsCopyWith<_$_Demonyms> get copyWith =>
      __$$_DemonymsCopyWithImpl<_$_Demonyms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DemonymsToJson(
      this,
    );
  }
}

abstract class _Demonyms implements Demonyms {
  const factory _Demonyms({required final Eng eng, required final Eng fra}) =
      _$_Demonyms;

  factory _Demonyms.fromJson(Map<String, dynamic> json) = _$_Demonyms.fromJson;

  @override
  Eng get eng;
  @override
  Eng get fra;
  @override
  @JsonKey(ignore: true)
  _$$_DemonymsCopyWith<_$_Demonyms> get copyWith =>
      throw _privateConstructorUsedError;
}
