import 'package:country_app/api/api.dart';
import 'package:country_app/model/country_model/country_model.dart';
import 'package:dio/dio.dart';

import '../api/exceptions/error_exceptions.dart';

class CountryRepository {
  final CountryApi countryApi;
  CountryRepository(this.countryApi);

  Future<List<CountryModel>> getCountries() async {
    try {
      final response = await countryApi.getCountryApi();
      final countries =
          (response.data as List).map((e) => CountryModel.fromJson(e)).toList();
      return countries;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  Future<List<CountryModel>> getRegion({required List<String> region}) async {
    try {
      final response = await countryApi.getRegion(region: region);
      final countries =
          (response.data as List).map((e) => CountryModel.fromJson(e)).toList();
      return countries;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
