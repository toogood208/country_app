import 'package:freezed_annotation/freezed_annotation.dart';

part 'postal_code.freezed.dart';
part 'postal_code.g.dart';
@Freezed()
class PostalCode with _$PostalCode{
  @JsonSerializable(explicitToJson: true)
  const factory PostalCode({
    required String format,
    required String regex,
  }) = _PostalCode;

   factory PostalCode.fromJson(Map<String, dynamic> json) => _$PostalCodeFromJson(json);

}
