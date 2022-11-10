import 'package:country_app/model/country_model/country_model.dart';
import 'package:dio/dio.dart';

class CountryApiService {
  const CountryApiService(this._dio);

  final Dio _dio;

  Future<List<CountryModel>> getCountry() async {
    final response = await _dio.get('/all');
    final jsonResponse = response.data as List;
    final f = jsonResponse.map((e) => CountryModel.fromJson(e)).toList();
    print(f);
    return f;
  }
}
