import 'package:freezed_annotation/freezed_annotation.dart';

part 'aed.freezed.dart';
part 'aed.g.dart';

@Freezed()
class Aed with _$Aed {
  @JsonSerializable(explicitToJson: true)
  const factory Aed({
    String? name,
    String? symbol,
  }) = _Aed;
 factory Aed.fromJson(Map<String, dynamic> json) => _$AedFromJson(json);
 
}
