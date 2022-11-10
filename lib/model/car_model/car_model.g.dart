// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      signs:
          (json['signs'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      side: $enumDecode(_$SideEnumMap, json['side']),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'signs': instance.signs,
      'side': _$SideEnumMap[instance.side]!,
    };

const _$SideEnumMap = {
  Side.left: 'left',
  Side.right: 'right',
};
