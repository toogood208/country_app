import 'package:freezed_annotation/freezed_annotation.dart';

import '../eng/eng.dart';

part 'dymonyms.freezed.dart';
part 'dymonyms.g.dart';

@Freezed()
class Demonyms with _$Demonyms {
  @JsonSerializable(explicitToJson: true)
  const factory Demonyms({
    required Eng eng,
    required Eng fra,
  }) = _Demonyms;
  factory Demonyms.fromJson(Map<String, dynamic> json) =>
      _$DemonymsFromJson(json);
}
