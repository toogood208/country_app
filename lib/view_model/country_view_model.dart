// ignore_for_file: constant_identifier_names

import 'package:country_app/Repository/api_repository.dart';
import 'package:country_app/model/country_model/country_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../di/service_locator.dart';
import '../home/model/filter_model.dart';

class CountryViewModel extends BaseViewModel {
  List<CountryModel> country = [];
  List<CountryModel> countryb = [];
  List<Filter> ff = [
    Filter(
        "Continent",
        [
          "Africa",
          "Antartica",
          "Asia",
          "Australia",
          "Europe",
          "North America",
          "South America",
        ],
        false),
  ];

  List languages = [
    "Bahasa",
    "Deutsch",
    "Español",
    "Française",
    "Português",
    "Pу́сский",
    "Svenska",
    "Türkçe",
    "English",
    "Arabic",
  ];
  var selectLanguage = "English";

  selectedLanguage(land) {
    selectLanguage = land;
    notifyListeners();
  }

  List<Widget> createLangeuageRadio() {
    List<Widget> widgets = <Widget>[];

    for (String language in languages) {
      widgets.add(
        ListTile(
          trailing: Radio(
            groupValue: selectLanguage,
            onChanged: (l) {
              selectedLanguage(l);
             
            },
            value: language,
          ),
          title: Text(language),
        ),
      );
    }
    return widgets;
  }

  // --------------- Repository -------------
  final countryRepository = getIt.get<CountryRepository>();

  // -------------- Methods ---------------

  Future<List<CountryModel>> getCountries({String? query}) async {
    var countries = await countryRepository.getCountries();
    for (var c in countries) {
      country.add(c);
      countryb.add(c);
    }
    notifyListeners();
    return countries;
  }



  searchByRegion() {
    const cont = [
      "Asia",
      "Africa",
      "Europe",
    ];
    List<CountryModel> s = [];
    for (var v in cont) {
      final suggestion =
          country.where((element) => element.region == v).toList();

      s = suggestion;

     
    }
    country = s;
    notifyListeners();
  }

  search(String query) {
   
    List<CountryModel> suggestions = countryb.where((e) {
      final countryLower = e.name!.common!.toLowerCase();
      final queryLower = query.toLowerCase();
      return countryLower.contains(queryLower);
    }).toList();
   
    country = suggestions;
    notifyListeners();
  }
}
