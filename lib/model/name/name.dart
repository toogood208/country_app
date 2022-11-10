import 'package:freezed_annotation/freezed_annotation.dart';

import '../translation/translation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@Freezed()
class Name with  _$Name {
  @JsonSerializable(explicitToJson: true)
 const factory Name({
    required String common,
    required String official,
    @Default(<String,Translation>{}) Map<String, Translation>? nativeName
    
  }) = _Name;

   factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
  
}
