import 'package:country_app/Repository/api_repository.dart';
import 'package:country_app/api/api.dart';
import 'package:country_app/view_model/country_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../api/dio_client/dio_client.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(CountryApi(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(CountryRepository(getIt.get<CountryApi>()));
  getIt.registerSingleton(CountryViewModel());
  getIt.registerSingleton(() => ThemeService.getInstance());
}
