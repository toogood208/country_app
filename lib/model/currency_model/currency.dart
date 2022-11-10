import '../bdd/bdd.dart';

class Currencies {
  BBD? bBD;

  Currencies({this.bBD});

  Currencies.fromJson(Map<String, dynamic> json) {
    bBD = json['BBD'] != null ? BBD.fromJson(json['BBD']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bBD != null) {
      data['BBD'] = bBD!.toJson();
    }
    return data;
  }
}
