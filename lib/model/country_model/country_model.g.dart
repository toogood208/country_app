// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_CountryModel _$$_CountryModelFromJson(Map<String, dynamic> json) =>
    _$_CountryModel(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      tld: (json['tld'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
      cca2: json['cca2'] as String,
      ccn3: json['ccn3'] as String,
      cca3: json['cca3'] as String,
      cioc: json['cioc'] as String,
      independent: json['independent'] as bool,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      unMember: json['unMember'] as bool,
      currencies:
          Currencies.fromJson(json['currencies'] as Map<String, dynamic>),
      idd: Idd.fromJson(json['idd'] as Map<String, dynamic>),
      capital: (json['capital'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      altSpellings: (json['altSpellings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      region: $enumDecode(_$RegionEnumMap, json['region']),
      subregion: json['subregion'] as String,
      languages: (json['languages'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      translations: (json['translations'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, Translation.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Translation>{},
      latlng: (json['latlng'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const <double>[],
      landlocked: json['landlocked'] as bool,
      area: (json['area'] as num).toDouble(),
      demonyms: Demonyms.fromJson(json['demonyms'] as Map<String, dynamic>),
      flag: json['flag'] as String,
      maps: Maps.fromJson(json['maps'] as Map<String, dynamic>),
      population: json['population'] as int,
      fifa: json['fifa'] as String,
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      timezones: (json['timezones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      continent: $enumDecode(_$ContinentEnumMap, json['continent']),
      flags: CoatOfArms.fromJson(json['flags'] as Map<String, dynamic>),
      coatOfArms:
          CoatOfArms.fromJson(json['coatOfArms'] as Map<String, dynamic>),
      startOfWeek: $enumDecode(_$StartOfWeekEnumMap, json['startOfWeek']),
      capitalInfo:
          CapitalInfo.fromJson(json['capitalInfo'] as Map<String, dynamic>),
      postalCode:
          PostalCode.fromJson(json['postalCode'] as Map<String, dynamic>),
      borders: (json['borders'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      gini: (json['gini'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ) ??
          const <String, double>{},
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name.toJson(),
      'tld': instance.tld,
      'cca2': instance.cca2,
      'ccn3': instance.ccn3,
      'cca3': instance.cca3,
      'cioc': instance.cioc,
      'independent': instance.independent,
      'status': _$StatusEnumMap[instance.status]!,
      'unMember': instance.unMember,
      'currencies': instance.currencies.toJson(),
      'idd': instance.idd.toJson(),
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'region': _$RegionEnumMap[instance.region]!,
      'subregion': instance.subregion,
      'languages': instance.languages,
      'translations':
          instance.translations?.map((k, e) => MapEntry(k, e.toJson())),
      'latlng': instance.latlng,
      'landlocked': instance.landlocked,
      'area': instance.area,
      'demonyms': instance.demonyms.toJson(),
      'flag': instance.flag,
      'maps': instance.maps.toJson(),
      'population': instance.population,
      'fifa': instance.fifa,
      'car': instance.car.toJson(),
      'timezones': instance.timezones,
      'continent': _$ContinentEnumMap[instance.continent]!,
      'flags': instance.flags.toJson(),
      'coatOfArms': instance.coatOfArms.toJson(),
      'startOfWeek': _$StartOfWeekEnumMap[instance.startOfWeek]!,
      'capitalInfo': instance.capitalInfo.toJson(),
      'postalCode': instance.postalCode.toJson(),
      'borders': instance.borders,
      'gini': instance.gini,
    };

const _$StatusEnumMap = {
  Status.officiallyAssigned: 'officially-assigned',
  Status.userAssigned: 'user-assigned',
};

const _$RegionEnumMap = {
  Region.americas: 'Americas',
  Region.africa: 'Africa',
  Region.europe: 'Europe',
  Region.oceania: 'Oceania',
  Region.asia: 'Asia',
  Region.antartic: 'Antartic',
};

const _$ContinentEnumMap = {
  Continent.northAmerica: 'North America',
  Continent.asia: 'Asia',
  Continent.africa: 'Africa',
  Continent.southAmerica: 'South America',
  Continent.europe: 'Europe',
  Continent.oceania: 'Oceania',
  Continent.antartica: 'Antantica',
};

const _$StartOfWeekEnumMap = {
  StartOfWeek.monday: 'monday',
  StartOfWeek.sunday: 'sunday',
  StartOfWeek.saturday: 'saturday',
};
