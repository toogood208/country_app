// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      common: json['common'] as String,
      official: json['official'] as String,
      nativeName: (json['nativeName'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, Translation.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Translation>{},
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'nativeName': instance.nativeName?.map((k, e) => MapEntry(k, e.toJson())),
    };
