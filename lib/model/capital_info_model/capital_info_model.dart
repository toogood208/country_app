import 'package:freezed_annotation/freezed_annotation.dart';

part 'capital_info_model.freezed.dart';
part 'capital_info_model.g.dart';

@Freezed()
class CapitalInfo with _$CapitalInfo{

  @JsonSerializable(explicitToJson: true)
  const factory  CapitalInfo({
    @Default(<double>[]) List<double> latlng
    })=_CapitalInfo;

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => _$CapitalInfoFromJson(json);


}
