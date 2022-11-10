import 'package:freezed_annotation/freezed_annotation.dart';

part 'coat_of_arm.freezed.dart';
part 'coat_of_arm.g.dart';

@Freezed()
class CoatOfArms with _$CoatOfArms{
  @JsonSerializable(explicitToJson: true)
  const factory CoatOfArms({
    required String png,
    required String svg,
  }) = _CoatOfArms;
  factory CoatOfArms.fromJson(Map<String, dynamic> json) => _$CoatOfArmsFromJson(json);

  
}
