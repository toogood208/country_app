import 'package:freezed_annotation/freezed_annotation.dart';
part 'maps.freezed.dart';
part 'maps.g.dart';

@Freezed()
class Maps with _$Maps{
  @JsonSerializable(explicitToJson: true)
  const factory Maps({
    required String bgoogleMaps,
    required String openStreetMaps,
  }) = _Maps;
   factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);



  
}
