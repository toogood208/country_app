import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

enum Side { left, right }

@Freezed()
class Car with _$Car {
  @JsonSerializable(explicitToJson: true)
  const factory Car({
    @Default(<String>[]) List<String> signs,
    required Side side,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
