// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'eng.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Eng _$EngFromJson(Map<String, dynamic> json) {
  return _Eng.fromJson(json);
}

/// @nodoc
mixin _$Eng {
  String get f => throw _privateConstructorUsedError;
  String get m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EngCopyWith<Eng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngCopyWith<$Res> {
  factory $EngCopyWith(Eng value, $Res Function(Eng) then) =
      _$EngCopyWithImpl<$Res, Eng>;
  @useResult
  $Res call({String f, String m});
}

/// @nodoc
class _$EngCopyWithImpl<$Res, $Val extends Eng> implements $EngCopyWith<$Res> {
  _$EngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
    Object? m = null,
  }) {
    return _then(_value.copyWith(
      f: null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as String,
      m: null == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EngCopyWith<$Res> implements $EngCopyWith<$Res> {
  factory _$$_EngCopyWith(_$_Eng value, $Res Function(_$_Eng) then) =
      __$$_EngCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String f, String m});
}

/// @nodoc
class __$$_EngCopyWithImpl<$Res> extends _$EngCopyWithImpl<$Res, _$_Eng>
    implements _$$_EngCopyWith<$Res> {
  __$$_EngCopyWithImpl(_$_Eng _value, $Res Function(_$_Eng) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? f = null,
    Object? m = null,
  }) {
    return _then(_$_Eng(
      f: null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as String,
      m: null == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Eng with DiagnosticableTreeMixin implements _Eng {
  const _$_Eng({required this.f, required this.m});

  factory _$_Eng.fromJson(Map<String, dynamic> json) => _$$_EngFromJson(json);

  @override
  final String f;
  @override
  final String m;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Eng(f: $f, m: $m)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Eng'))
      ..add(DiagnosticsProperty('f', f))
      ..add(DiagnosticsProperty('m', m));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Eng &&
            (identical(other.f, f) || other.f == f) &&
            (identical(other.m, m) || other.m == m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, f, m);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EngCopyWith<_$_Eng> get copyWith =>
      __$$_EngCopyWithImpl<_$_Eng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EngToJson(
      this,
    );
  }
}

abstract class _Eng implements Eng {
  const factory _Eng({required final String f, required final String m}) =
      _$_Eng;

  factory _Eng.fromJson(Map<String, dynamic> json) = _$_Eng.fromJson;

  @override
  String get f;
  @override
  String get m;
  @override
  @JsonKey(ignore: true)
  _$$_EngCopyWith<_$_Eng> get copyWith => throw _privateConstructorUsedError;
}
