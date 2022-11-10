// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'aed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Aed _$AedFromJson(Map<String, dynamic> json) {
  return _Aed.fromJson(json);
}

/// @nodoc
mixin _$Aed {
  String? get name => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AedCopyWith<Aed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AedCopyWith<$Res> {
  factory $AedCopyWith(Aed value, $Res Function(Aed) then) =
      _$AedCopyWithImpl<$Res, Aed>;
  @useResult
  $Res call({String? name, String? symbol});
}

/// @nodoc
class _$AedCopyWithImpl<$Res, $Val extends Aed> implements $AedCopyWith<$Res> {
  _$AedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AedCopyWith<$Res> implements $AedCopyWith<$Res> {
  factory _$$_AedCopyWith(_$_Aed value, $Res Function(_$_Aed) then) =
      __$$_AedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? symbol});
}

/// @nodoc
class __$$_AedCopyWithImpl<$Res> extends _$AedCopyWithImpl<$Res, _$_Aed>
    implements _$$_AedCopyWith<$Res> {
  __$$_AedCopyWithImpl(_$_Aed _value, $Res Function(_$_Aed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_$_Aed(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Aed implements _Aed {
  const _$_Aed({this.name, this.symbol});

  factory _$_Aed.fromJson(Map<String, dynamic> json) => _$$_AedFromJson(json);

  @override
  final String? name;
  @override
  final String? symbol;

  @override
  String toString() {
    return 'Aed(name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Aed &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AedCopyWith<_$_Aed> get copyWith =>
      __$$_AedCopyWithImpl<_$_Aed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AedToJson(
      this,
    );
  }
}

abstract class _Aed implements Aed {
  const factory _Aed({final String? name, final String? symbol}) = _$_Aed;

  factory _Aed.fromJson(Map<String, dynamic> json) = _$_Aed.fromJson;

  @override
  String? get name;
  @override
  String? get symbol;
  @override
  @JsonKey(ignore: true)
  _$$_AedCopyWith<_$_Aed> get copyWith => throw _privateConstructorUsedError;
}
