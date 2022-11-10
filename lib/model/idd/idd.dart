import 'package:freezed_annotation/freezed_annotation.dart';

part 'idd.freezed.dart';
part 'idd.g.dart';

@Freezed()
class Idd with _$Idd{
  @JsonSerializable(explicitToJson: true)
  const factory Idd({
    required String bgoogleMaps,
    required String openStreetMaps,
  }) = _Idd;
   factory Idd.fromJson(Map<String, dynamic> json) => _$IddFromJson(json);



  
}
