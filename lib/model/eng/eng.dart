import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eng.freezed.dart';
part 'eng.g.dart';

@Freezed()
class Eng with _$Eng {
  @JsonSerializable(explicitToJson: true)
 const factory Eng({
    required String f,
    required String m,
  }) = _Eng;
  factory Eng.fromJson(Map<String, dynamic> json) => _$EngFromJson(json);

  
}
