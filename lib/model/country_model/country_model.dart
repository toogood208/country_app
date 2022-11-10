import 'package:freezed_annotation/freezed_annotation.dart';

import '../capital_info_model/capital_info_model.dart';
import '../car_model/car_model.dart';
import '../coat_of_arm_model/coat_of_arm.dart';
import '../currency_model/currency.dart';
import '../dynonyms/dymonyms.dart';
import '../idd/idd.dart';
import '../maps/maps.dart';
import '../name/name.dart';
import '../postal_code/postal_code.dart';
import '../translation/translation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@JsonEnum()
enum Continent {
  @JsonValue('North America')
  northAmerica,
  @JsonValue('Asia')
  asia,
  @JsonValue('Africa')
  africa,
  @JsonValue('South America')
  southAmerica,
  @JsonValue('Europe')
  europe,
  @JsonValue('Oceania')
  oceania,
  @JsonValue('Antantica')
  antartica
}

@JsonEnum()
enum Region { 
  @JsonValue('Americas')
  americas, 
  @JsonValue('Africa')
  africa, 
  @JsonValue('Europe')
  europe, 
  @JsonValue('Oceania')
  oceania, 
  @JsonValue('Asia')
  asia, 
  @JsonValue('Antartic')
  antartic }

enum StartOfWeek { monday, sunday, saturday }

@JsonEnum()
enum Status {
  @JsonValue('officially-assigned')
  officiallyAssigned,
  @JsonValue('user-assigned')
  userAssigned
}

@Freezed()
class CountryModel with _$CountryModel{
  @JsonSerializable(explicitToJson: true)
  const factory CountryModel({
    @JsonValue("name")
    required Name name,
    @JsonValue("tld")
    @Default(<String>[])  List<String> tld,
    @JsonValue("cca2")
    required String cca2,
    @JsonValue("ccn3")
    required String ccn3,
    @JsonValue("cca3")
    required String cca3,
    @JsonValue("cioc")
    required String cioc,
    @JsonValue("independent")
    required bool independent,
    @JsonValue("status")
    required Status status,
    @JsonValue("unMemebr")
    required bool unMember,
    @JsonValue("currencies")
    required Currencies currencies,
    @JsonValue("idd")
    required Idd idd,
    @JsonValue("capital")
    @Default(<String>[])  List<String> capital,
    @JsonValue("altSpelling")
    @Default(<String>[])  List<String> altSpellings,
    @JsonValue("reion")
    required Region region,
    @JsonValue("subregion")
    required String subregion,
    @JsonValue("languages")
    @Default(<String,String>{}) Map <String, String> languages,
    @JsonValue("translations")
    @Default(<String,Translation>{}) Map <String, Translation>? translations,
    @JsonValue("latlng")
    @Default(<double>[])  List<double> latlng,
    @JsonValue("landlocked")
    required bool landlocked,
    @JsonValue("area")
    required double area,
    @JsonValue("demonyms")
    required Demonyms demonyms,
    @JsonValue("flag")
    required String flag,
    @JsonValue("maps")
    required Maps maps,
    required int population,
    required String fifa,
    required Car car,
    @Default(<String>[]) List<String> timezones,
    required Continent continent,
    required CoatOfArms flags,
    required CoatOfArms coatOfArms,
    required StartOfWeek startOfWeek,
    required CapitalInfo capitalInfo,
    required PostalCode postalCode,
    @Default(<String>[]) List<String> borders,
    @Default(<String,double>{}) Map <String, double> gini,
 
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);

 
}
