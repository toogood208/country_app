import 'package:freezed_annotation/freezed_annotation.dart';

part 'bam.freezed.dart';
part 'bam.g.dart';

@Freezed()
class Bam with _$Bam {
  @JsonSerializable(explicitToJson: true)
  const factory Bam({
    String? name,
    String? symbol,
  }) = _Bam;
 factory Bam.fromJson(Map<String, dynamic> json) => _$BamFromJson(json);
 
}