import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation.freezed.dart';
part 'translation.g.dart';
@Freezed()
class Translation with _$Translation {
  @JsonSerializable(explicitToJson: true)
  const factory Translation({
    required String official,
    required String common,
  }) = _Translation;
  factory Translation.fromJson(Map<String, dynamic> json) => _$TranslationFromJson(json);

 
}
