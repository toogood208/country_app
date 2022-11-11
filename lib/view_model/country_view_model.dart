import 'package:country_app/Repository/api_repository.dart';

import '../di/service_locator.dart';

class CountryViewModel {
  // --------------- Repository -------------
  final countryRepository = getIt.get<CountryRepository>();

  // -------------- Methods ---------------

  getCountries() async {
    final countries = await countryRepository.getCountries();
    return countries;
  }

 
}
