import 'package:dio/dio.dart';

import 'constants/endpoints.dart';
import 'dio_client/dio_client.dart';

class CountryApi {
  final DioClient dioClient;

  CountryApi({required this.dioClient});

  Future<Response> getCountryApi() async {
    try {
      final Response response = await dioClient.get(Endpoints.all);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
