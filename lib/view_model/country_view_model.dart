import 'package:country_app/Repository/api_repository.dart';
import 'package:country_app/model/country_model/country_model.dart';
import 'package:flutter/material.dart';

import '../di/service_locator.dart';

class CountryViewModel with ChangeNotifier {
  String searchText = "";
  final TextEditingController filter = TextEditingController();

  s() {
    filter.addListener(() {
      if (filter.text.isEmpty) {
        searchText = '';
        notifyListeners();
      } else {
        searchText = filter.text;
        notifyListeners();
      }
    });
  }

  // --------------- Repository -------------
  final countryRepository = getIt.get<CountryRepository>();

  // -------------- Methods ---------------

  Future<List<CountryModel>> getCountries({String? query}) async {
    var countries = await countryRepository.getCountries();
    if (query != null) {
      countries = countries
          .where((element) =>
              element.name!.common!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    return countries;
  }
}
